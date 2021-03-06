///////////////////////////////////////////////////////////////////////////////
// WinampAC3
//
// Class represends WinampAC3 plugin instance. It contains working thread and
// control interface.
///////////////////////////////////////////////////////////////////////////////

#ifndef WINAMPAC3_H
#define WINAMPAC3_H

#include "guids.h"
#include "winamp.h"
#include "tray.h"
#include "win32\thread.h"
#include "win32\cpu.h"

#include "parsers\file_parser.h"
#include "parsers\multi_header.h"

#include "com_dec.h"
#include "sink\sink_dsound.h"
#include "winamp_sink.h"

class WinampAC3 : public IWinampAC3, public Thread
{
protected:
  In_Module  *mod;
  CPUMeter    cpu;

  bool tray;
  int isink;
  int reinit;

  WinampAC3Tray tray_ctl;

  // Decoding process objects
  MultiHeader header_parser;
  FileParser  file;

  COMDecoder  dec;

  WinampSink  wa_sink;
  DSoundSink  ds_sink;

  Sink            *sink;
  PlaybackControl *ctrl;

  HANDLE      ev_play;
  HANDLE      ev_stop;

  int         base_pos;

  enum { state_start, state_stop, state_process, state_flush }
              state;

public:
  WinampAC3(In_Module *mod);
  ~WinampAC3();

  DWORD process();

  /////////////////////////////////////////////////////////
  // Winamp control interface
  // Called by winamp (control thread)

  // Playback control
  virtual bool play(const char *filename);
  virtual bool stop();
  virtual const char *get_filename();

  virtual void pause();
  virtual void unpause();
  virtual bool is_paused();

  // Positioning
  virtual void  seek(int pos);
  virtual int   get_length();
  virtual int   get_pos();

  // Playback options
  virtual void  set_volume(int volume);
  virtual void  set_pan(int pan);

  /////////////////////////////////////////////////////////
  // User interface
  // Called from config dialog (control thread)

  // Tray icon
  STDMETHODIMP get_tray(bool *tray);
  STDMETHODIMP set_tray(bool tray);

  // Setup sink used for output (SINK_XXXX constants)
  STDMETHODIMP get_sink(int *sink, int *current_sink);
  STDMETHODIMP set_sink(int  sink);

  // Reinit sound card after pause option
  STDMETHODIMP get_reinit(int *reinit);
  STDMETHODIMP set_reinit(int  reinit);

  STDMETHODIMP get_playback_time(vtime_t *time);
  STDMETHODIMP get_cpu_usage(double *cpu_usage);
  STDMETHODIMP get_env(char *buf, int size);

  /////////////////////////////////////////////////////////
  // Config

  STDMETHODIMP config(HWND parent);

  /////////////////////////////////////////////////////////
  // Other interfaces

  virtual IDecoder        *get_decoder();
  virtual IAudioProcessor *get_audio_processor();
};


#endif
