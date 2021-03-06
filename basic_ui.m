function varargout = basic_ui(varargin)
% BASIC_UI MATLAB code for basic_ui.fig
%      BASIC_UI, by itself, creates a new BASIC_UI or raises the existing
%      singleton*.
%
%      H = BASIC_UI returns the handle to a new BASIC_UI or the handle to
%      the existing singleton*.
%
%      BASIC_UI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in BASIC_UI.M with the given input arguments.
%
%      BASIC_UI('Property','Value',...) creates a new BASIC_UI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before basic_ui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to basic_ui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help basic_ui

% Last Modified by GUIDE v2.5 14-Mar-2021 14:06:03

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @basic_ui_OpeningFcn, ...
                   'gui_OutputFcn',  @basic_ui_OutputFcn, ...
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


% --- Executes just before basic_ui is made visible.
function basic_ui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to basic_ui (see VARARGIN)

% Choose default command line output for basic_ui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes basic_ui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = basic_ui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
i=imread('cameraman.tif');
axes(handles.axes1),imshow(i);


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global j
j=imread('peppers.png');
axes(handles.axes2),imshow(j);


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global j
gy=rgb2gray(j);
axes(handles.axes3),imshow(gy);
