function varargout = graphe(varargin)
% GRAPHE M-file for graphe.fig
%      GRAPHE, by itself, creates a new GRAPHE or raises the existing
%      singleton*.
%
%      H = GRAPHE returns the handle to a new GRAPHE or the handle to
%      the existing singleton*.
%
%      GRAPHE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GRAPHE.M with the given input arguments.
%
%      GRAPHE('Property','Value',...) creates a new GRAPHE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before graphe_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to graphe_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help graphe

% Last Modified by GUIDE v2.5 22-Jul-2006 08:18:16

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @graphe_OpeningFcn, ...
                   'gui_OutputFcn',  @graphe_OutputFcn, ...
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


% --- Executes just before graphe is made visible.
function graphe_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to graphe (see VARARGIN)

% Choose default command line output for graphe
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes graphe wait for user response (see UIRESUME)
% uiwait(handles.figure2);

% --- Outputs from this function are returned to the command line.
function varargout = graphe_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;





% --- Executes during object creation, after setting all properties.
function text5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

