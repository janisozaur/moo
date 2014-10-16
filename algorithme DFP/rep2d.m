function varargout = rep2d(varargin)
% REP2D M-file for rep2d.fig
%      REP2D, by itself, creates a new REP2D or raises the existing
%      singleton*.
%
%      H = REP2D returns the handle to a new REP2D or the handle to
%      the existing singleton*.
%
%      REP2D('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in REP2D.M with the given input arguments.
%
%      REP2D('Property','Value',...) creates a new REP2D or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before rep2d_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to rep2d_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help rep2d

% Last Modified by GUIDE v2.5 12-Jul-2006 13:12:21

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @rep2d_OpeningFcn, ...
                   'gui_OutputFcn',  @rep2d_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin & isstr(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before rep2d is made visible.
function rep2d_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to rep2d (see VARARGIN)

% Choose default command line output for rep2d
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes rep2d wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = rep2d_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
