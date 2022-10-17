function varargout = Letras(varargin)
% LETRAS MATLAB code for Letras.fig
%      LETRAS, by itself, creates a new LETRAS or raises the existing
%      singleton*.
%
%      H = LETRAS returns the handle to a new LETRAS or the handle to
%      the existing singleton*.
%
%      LETRAS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in LETRAS.M with the given input arguments.
%
%      LETRAS('Property','Value',...) creates a new LETRAS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Letras_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Letras_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Letras

% Last Modified by GUIDE v2.5 26-Oct-2016 19:29:58

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Letras_OpeningFcn, ...
                   'gui_OutputFcn',  @Letras_OutputFcn, ...
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


% --- Executes just before Letras is made visible.
function Letras_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Letras (see VARARGIN)

% Choose default command line output for Letras
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Letras wait for user response (see UIRESUME)
% uiwait(handles.figure1);

global tem
tem=5;


% --- Outputs from this function are returned to the command line.
function varargout = Letras_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

% GRABAR-------------------------------------------------------------------
% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global tem
recObj = audiorecorder (8000,16,1);
disp('Start speaking.');
recordblocking(recObj, tem);
disp('End of Recording.');
lts = getaudiodata(recObj);
plot(lts);

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in togglebutton1.
function togglebutton1_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton1
