unit structure.domain.field;

interface

uses
  provider;

type

  TField = class(TInterfacedObject, IField)
  private
    FID: integer;
    FPrimaryKey: Boolean;
    FName: string;
    FFieldType: string;
  public

    function ID: integer; overload;
    function ID(const Value: integer): IField; overload;

    function PrimaryKey: Boolean; overload;
    function PrimaryKey(const Value: Boolean): IField; overload;

    function Name: string; overload;
    function Name(const Value: string): IField; overload;

    function FieldType: string; overload;
    function FieldType(const Value: string): IField; overload;

  end;

implementation

uses
  system.strutils;

{ TField }

function TField.FieldType: string;
begin
  Result := FFieldType;
end;

function TField.FieldType(const Value: string): IField;
begin
  Result := Self;
  FFieldType := Value;
end;

function TField.ID: integer;
begin
  Result := FID;
end;

function TField.ID(const Value: integer): IField;
begin
  Result := Self;
  FID := Value;
end;

function TField.Name(const Value: string): IField;
begin
  Result := Self;
  FName := ReplaceStr(Value, '"', '');
end;

function TField.PrimaryKey(const Value: Boolean): IField;
begin
  Result := Self;
  FPrimaryKey := Value;
end;

function TField.PrimaryKey: Boolean;
begin
  Result := FPrimaryKey;
end;

function TField.Name: string;
begin
  Result := FName;
end;

end.