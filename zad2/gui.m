function varargout = gui(varargin)
% GUI MATLAB code for gui.fig
%      GUI, by itself, creates a new GUI or raises the existing
%      singleton*.
%
%      H = GUI returns the handle to a new GUI or the handle to
%      the existing singleton*.
%
%      GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI.M with the given input arguments.
%
%      GUI('Property','Value',...) creates a new GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before gui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to gui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help gui

% Last Modified by GUIDE v2.5 03-Apr-2011 21:41:25

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @gui_OpeningFcn, ...
                   'gui_OutputFcn',  @gui_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before gui is made visible.
function gui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to gui (see VARARGIN)

% Choose default command line output for gui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes gui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = gui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function functionEdit_Callback(hObject, eventdata, handles)
% hObject    handle to functionEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of functionEdit as text
%        str2double(get(hObject,'String')) returns contents of functionEdit as a double


% --- Executes during object creation, after setting all properties.
function functionEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to functionEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
	% hObject    handle to pushbutton1 (see GCBO)
	% eventdata  reserved - to be defined in a future version of MATLAB
	% handles    structure with handles and user data (see GUIDATA)
	fun = get(handles.functionEdit, 'String');
	startX = eval(get(handles.startXEdit, 'String'));
	startY = eval(get(handles.startYEdit, 'String'));
	directionX = eval(get(handles.dirXEdit, 'String'));
	directionY = eval(get(handles.dirYEdit, 'String'));
	c1 = eval(get(handles.c1Edit, 'String'));
	c2 = eval(get(handles.c2Edit, 'String'));
	ro = eval(get(handles.roEdit, 'String'));
	epsilon = eval(get(handles.epsilonEdit, 'String'));
	method = get(handles.functionCombo, 'String');
	method = char(method(get(handles.functionCombo, 'Value')));
	omega = get(handles.omegaEdit, 'String');
	startPoint = [startX, startY];
	direction = [directionX, directionY];
	a = [0.1, 0.2, 0.3, 0.4];
	b = [0.2, 0.4, 0.6];
	c = [0.1, 0.3, 0.5];
	%for i1 = 1:size(a, 2)
	%	for i2 = 1:size(b, 2)
	%		for i3 = 1:size(c, 2)
	%			c1 = a(i1);
	%			c2 = b(i2);
	%			ro = c(i3);
				[step, iterations] = feval(method, fun, startPoint, direction, c1, c2, ro, 0, epsilon, omega, 0);
	%			result = startPoint + step * direction;
	%			fprintf(1, '    %g & %g & %g & %d & %g & %g & %g \\\\\n', c1, ro, step, iterations, result(1), result(2), valueInPoint(fun, startPoint, direction, step));
	%			fprintf(1, '    %g & %g & %g & %g & %d & %g & %g & %g \\\\\n', c1, c2, ro, step, iterations, result(1), result(2), valueInPoint(fun, startPoint, direction, step));
	%		end
	%	end
	%end
    %			fprintf(1, 'c1: %g, ro: %g, lambda: %g, ilosc krokow: %d, wynik.x: %g, wynik.y: %g, wynik.z: %g \n', c1, ro, step, iterations, result(1), result(2), valueInPoint(fun, startPoint, direction, step));
	%			fprintf(1, 'c1: %g, c2: %g, ro: %g, lambda: %g, ilosc krokow: %d, wynik.x: %g, wynik.y: %g, wynik.z: %g \n', c1, c2, ro, step, iterations, result(1), result(2), valueInPoint(fun, startPoint, direction, step));

function startXEdit_Callback(hObject, eventdata, handles)
% hObject    handle to startXEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of startXEdit as text
%        str2double(get(hObject,'String')) returns contents of startXEdit as a double


% --- Executes during object creation, after setting all properties.
function startXEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to startXEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function startYEdit_Callback(hObject, eventdata, handles)
% hObject    handle to startYEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of startYEdit as text
%        str2double(get(hObject,'String')) returns contents of startYEdit as a double


% --- Executes during object creation, after setting all properties.
function startYEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to startYEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c1Edit_Callback(hObject, eventdata, handles)
% hObject    handle to c1Edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c1Edit as text
%        str2double(get(hObject,'String')) returns contents of c1Edit as a double


% --- Executes during object creation, after setting all properties.
function c1Edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c1Edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function epsilonEdit_Callback(hObject, eventdata, handles)
% hObject    handle to epsilonEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of epsilonEdit as text
%        str2double(get(hObject,'String')) returns contents of epsilonEdit as a double


% --- Executes during object creation, after setting all properties.
function epsilonEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to epsilonEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in functionCombo.
function functionCombo_Callback(hObject, eventdata, handles)
% hObject    handle to functionCombo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns functionCombo contents as cell array
%        contents{get(hObject,'Value')} returns selected item from functionCombo


% --- Executes during object creation, after setting all properties.
function functionCombo_CreateFcn(hObject, eventdata, handles)
% hObject    handle to functionCombo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function dirXEdit_Callback(hObject, eventdata, handles)
% hObject    handle to dirXEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of dirXEdit as text
%        str2double(get(hObject,'String')) returns contents of dirXEdit as a double


% --- Executes during object creation, after setting all properties.
function dirXEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to dirXEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function dirYEdit_Callback(hObject, eventdata, handles)
% hObject    handle to dirYEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of dirYEdit as text
%        str2double(get(hObject,'String')) returns contents of dirYEdit as a double


% --- Executes during object creation, after setting all properties.
function dirYEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to dirYEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function c2Edit_Callback(hObject, eventdata, handles)
% hObject    handle to c2Edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of c2Edit as text
%        str2double(get(hObject,'String')) returns contents of c2Edit as a double


% --- Executes during object creation, after setting all properties.
function c2Edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c2Edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function roEdit_Callback(hObject, eventdata, handles)
% hObject    handle to roEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of roEdit as text
%        str2double(get(hObject,'String')) returns contents of roEdit as a double


% --- Executes during object creation, after setting all properties.
function roEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to roEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function omegaEdit_Callback(hObject, eventdata, handles)
% hObject    handle to omegaEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of omegaEdit as text
%        str2double(get(hObject,'String')) returns contents of omegaEdit as a double


% --- Executes during object creation, after setting all properties.
function omegaEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to omegaEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
