#ifndef TARTINI_CORE_H
#define TARTINI_CORE_H

#ifdef __cplusplus
extern "C" {
#endif


#include <fftw3.h>
//#include <vector>
//#include <cmath>
#define __USE_ISOC99 1
#include <math.h>

#ifndef bool
#define bool int
#define false 0
#define true 1
#endif

//!!!Equivalent of public functions:
typedef struct {
  int n, k, size;
  fftwf_plan planAutocorrTime2FFT, planAutocorrFFT2Time;
  float *autocorrTime, *autocorrFFT;
  double sample_rate;
  float *autocorr_buf;
	double noiseFloor; //in dB
} Tartini;


//Usage: 
//      int buffer_size = 2048; // in frames
//      int step_size = 1024; // in frames
//      int sample_rate = 44100;
//      float * buffer = (float*)malloc(buffer_size * sizeof(float));
//
//      Tartini t* = new_tartini(buffer_size, sample_rate)
//
//      Loop:
//      //Populate_Buffer(buffer);
//		valid = find_pitch(t, buffer, &freq, &logPower);
//		pitch = freq2pitch(freq);
//		//print_tuning(pitch, 1.0 - (logPower / t->noiseFloor), valid);

Tartini *new_tartini(int n, double sample_rate);
void delete_tartini(Tartini *t);

/**
  @param input An array of floats to be processed to find the pitch of
	@param logPower The volume is returned in this
	@param freq The freq is returned in this
*/
bool find_pitch(Tartini *t, kiss_fft_scalar *input, double *freq, double *logPower);

//Also freq2pitch and toInt may be useful
//!!!Ends


const double dBFloor = -120.0; //in dB
extern char *noteNames[12];

char* noteName(int pitch);
/** Performs an autocorrelation on the input
  @param input An array of length n, in which the autocorrelation is taken
  @param ouput This should be an array of length k.
               This is the correlation of the signal with itself
               for delays 1 to k (stored in elements 0 to k-1)
  @return The sum of squares of the input. (ie the zero delay correlation)
  Note: Use the init function to set values of n and k before calling this.
*/
double autocorr(Tartini *t, const __int32 *input, float *output);
/** The Normalised Square Difference Function.
    @param input. An array of length n, in which the ASDF is taken
    @param ouput. This should be an array of length k
    @return The sum of squares of the input
*/
double nsdf(Tartini *t, const kiss_fft_scalar *input, float *output);

//int findNSDFMaxima(float *input, int len, std::vector<int> &maxPositions);
/**
    Find the highest maxima between each pair of positive zero crossings.
    Including the highest maxima between the last +ve zero crossing and the end if any.
    Ignoring the first (which is at zero)
    In this diagram the disired maxima are marked with a *

                  *             *
    \      *     /\      *     /\
    _\____/\____/__\/\__/\____/__
      \  /  \  /      \/  \  /
       \/    \/            \/

  @param input The array to look for maxima in
  @param len Then length of the input array
  @param maxPositions The resulting maxima positions are pushed back to this vector
  @return The index of the overall maximum
*/
int findNSDFMaxima(float *input, int len, int *maxPositions /*Array of length "len"*/, int * NumActualIndicies /*returns Number of populated entries in maxPositions*/);
/** @return The index of the first sub maximum.
  This is now scaled from (threshold * overallMax) to 0.
*/
int findNSDFsubMaximum(float *input, int len, float threshold);

/*
template<class T>
inline T bound(T var, T lowerBound, T upperBound)
{
  //this way will deal with NAN, setting it to lowerBound
  if(var >= lowerBound) {
    if(var <= upperBound) return var;
    else return upperBound;
  } else return lowerBound;
}
*/

//C version
__inline double bound_double(double var, double lowerBound, double upperBound)
{
  //this way will deal with NAN, setting it to lowerBound
  if(var >= lowerBound) {
    if(var <= upperBound) return var;
    else return upperBound;
  } else return lowerBound;
}


/** Calculate the x position and the y position of the min/max of a parabola at the same time
  @param y_1, y0 and y1 are the values of the function at xOffset-1, xOffset and xOffset+1
  @param xOffset the x value at which y0 is a function of
  @param x The x result will be put in here
  @param y The y result will be put in here
*/
/*
template<class T>
inline void parabolaTurningPoint2(T y_1, T y0, T y1, T xOffset, T *x, T *y)
{
  T yTop = y_1 - y1;
  T yBottom = y1 + y_1 - 2 * y0;
  if(yBottom != 0.0) {
    *x = xOffset + yTop / (2 * yBottom);
    *y = y0 - ((yTop*yTop) / (8 * yBottom));
  } else {
    *x = xOffset;
    *y = y0;
  }
}
*/
__inline void parabolaTurningPoint2(float y_1, float y0, float y1, float xOffset, float *x, float *y)
{
  float yTop = y_1 - y1;
  float yBottom = y1 + y_1 - 2 * y0;
  if(yBottom != 0.0) {
    *x = xOffset + yTop / (2 * yBottom);
    *y = y0 - ((yTop*yTop) / (8 * yBottom));
  } else {
    *x = xOffset;
    *y = y0;
  }
}


/** Converts the frequencies freq (in hertz) into their note number on the midi scale
    i.e. the number of semi-tones above C0
    Note: The note's pitch will contain its fractional part
    Reference = http://www.borg.com/~jglatt/tutr/notenum.htm
  @param freq The frequency in Hz
  @return The pitch in fractional part semitones from the midi scale.
*/

//!!!
  //  Win32 doesn't seem to have the lrint or lrintf functions.
  //  Therefore implement inline versions of these functions here.

  __inline long int 
  lrint (double flt)
  {
    return (int)(floor(flt + 0.5));
    /*!!!WinCE won't do this of course (in non-intel); what is lrint anyway? Is it the above?
    int intgr;
    _asm { fld flt
      fistp intgr
      } ;
    return intgr ;
    */
  } 
  
  __inline long int 
  lrintf (float flt)
  { 
    return (int)(floor(flt + 0.5));
    /*!!!WinCE won't do this of course (in non-intel); what is lrint anyway? Is it the above?
    int intgr;
    _asm
    { fld flt
      fistp intgr
      } ;
    return intgr ;
    */
  }
//!!!


//See also wikipedia "Scientific Pitch notation"
//Some information about frequency and pitch (musical note name)
//All of the notes are derived from a single reference frequency, normally 440Hz = A
//To get the next note up from A (A#), multiply the reference frequency by POWER(2,1/12) (the 12th root of 2).
//To get the next note again (B) ditto
//(The 12th root of 2 is a "magic number" that "just is" for the musical scale we are using).
//440	A	
//466	A#	//Shown here rounded to the nearest integer
//494	B	//Shown here rounded to the nearest integer: note, you need to mnultiply the *actual* A# freq by 2^(1/12), not the rouded value of 466!
//To go downwards, Start at 440 and divide by 2^12 etc.
//The original code is commented out below: it assumes a reference frequency of 440Hz.
//The magic number is 12.0*log2(<One Octave Below C0 == around 8Hz>)
//I don't know why it is one octave below C0, rather than C0, but go figure.
//I guess 12*log2(freq) is used to give integer values up from that magic number: that is certainly how it works when I look at it in Excel.
//So, for a different reference frequency, I just need to recompute the magic number.
//I've tested this in Excel and it works just fine (further, I get the same magic number for RefFreq = 440
__inline double freq2pitch(double const Freq_hz, double const ConcertAReferenceFreq_Hz)
{
    //FrequencyOfC0=440/(POWER(POWER(2,1/12),57))
    double const FrequencyOfNoteOneOctaveBelowC0 = ConcertAReferenceFreq_Hz/(pow(pow(2.0,1.0/12.0),69.0));
#ifdef log2
	return -12.0*log2(FrequencyOfNoteOneOctaveBelowC0) + 12.0*log2(Freq_hz);
#else
	return -39.8631371386483481*log10(FrequencyOfNoteOneOctaveBelowC0) + 39.8631371386483481*log10(Freq_hz);
#endif

/*
//This code assumes a reference freq of 440Hz:
#ifdef log2
	return -36.3763165622959152488 + 12.0*log2(freq);
#else
	return -36.3763165622959152488 + 39.8631371386483481*log10(freq);
#endif
*/
}

__inline int toInt(const float x) {
  return lrintf(x);
  //return int(floor(x + 0.5));
}

/*
inline int toInt(const double x) {
  return lrint(x);
  //return int(floor(x + 0.5));
}
*/

__inline int cycle(const int a, const int b, int * c) //###Called by RtAudio.cpp: Hmm!
{
    if(a >= 0) 
    {
        div_t answer = div(a,b);
        *c = answer.quot-1; //-1 gives us the correct octave number
        return answer.rem;
        //return a % b;
    }
    else 
    {
        div_t answer = div(a+1,b);
        *c = answer.quot-1; //-1 gives us the correct octave number
        return b + (answer.rem) - 1;
        //return b + ((a+1) % b) - 1;
    }
}

#ifdef __cplusplus
}
#endif

#endif //TARTINI_CORE_H

