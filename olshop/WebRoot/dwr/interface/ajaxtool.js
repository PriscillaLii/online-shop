
// Provide a default path to dwr.engine
if (dwr == null) var dwr = {};
if (dwr.engine == null) dwr.engine = {};
if (DWREngine == null) var DWREngine = dwr.engine;

if (ajaxtool == null) var ajaxtool = {};
ajaxtool._path = '/dwr';
ajaxtool.getMessage = function(p0, p1, callback) {
  dwr.engine._execute(ajaxtool._path, 'ajaxtool', 'getMessage', p0, p1, callback);
}
ajaxtool.getType = function(callback) {
  dwr.engine._execute(ajaxtool._path, 'ajaxtool', 'getType', false, callback);
}
ajaxtool.getOper = function(p0, callback) {
  dwr.engine._execute(ajaxtool._path, 'ajaxtool', 'getOper', p0, callback);
}
ajaxtool.getJas = function(p0, p1, callback) {
  dwr.engine._execute(ajaxtool._path, 'ajaxtool', 'getJas', p0, p1, callback);
}
ajaxtool.getJxl = function(p0, callback) {
  dwr.engine._execute(ajaxtool._path, 'ajaxtool', 'getJxl', p0, callback);
}
ajaxtool.getTjzt = function(callback) {
  dwr.engine._execute(ajaxtool._path, 'ajaxtool', 'getTjzt', callback);
}
ajaxtool.reCall = function(callback) {
  dwr.engine._execute(ajaxtool._path, 'ajaxtool', 'reCall', callback);
}
ajaxtool.getZybInfo = function(p0, callback) {
  dwr.engine._execute(ajaxtool._path, 'ajaxtool', 'getZybInfo', p0, callback);
}
ajaxtool.getBjInfo = function(p0, p1, callback) {
  dwr.engine._execute(ajaxtool._path, 'ajaxtool', 'getBjInfo', p0, p1, callback);
}
ajaxtool.getTmxx = function(p0, p1, callback) {
  dwr.engine._execute(ajaxtool._path, 'ajaxtool', 'getTmxx', p0, p1, callback);
}
ajaxtool.checkEmail = function(p0, p1, p2, callback) {
  dwr.engine._execute(ajaxtool._path, 'ajaxtool', 'checkEmail', p0, p1, p2, callback);
}
ajaxtool.getXsbInfo = function(callback) {
  dwr.engine._execute(ajaxtool._path, 'ajaxtool', 'getXsbInfo', callback);
}
ajaxtool.getJxdwXsbInfo = function(callback) {
  dwr.engine._execute(ajaxtool._path, 'ajaxtool', 'getJxdwXsbInfo', callback);
}
ajaxtool.getLwJxdwXsbInfo = function(p0, callback) {
  dwr.engine._execute(ajaxtool._path, 'ajaxtool', 'getLwJxdwXsbInfo', p0, callback);
}
ajaxtool.getZyfxbInfo = function(p0, p1, callback) {
  dwr.engine._execute(ajaxtool._path, 'ajaxtool', 'getZyfxbInfo', p0, p1, callback);
}
ajaxtool.getZyInfo = function(p0, callback) {
  dwr.engine._execute(ajaxtool._path, 'ajaxtool', 'getZyInfo', p0, callback);
}
ajaxtool.getSpecZyInfo = function(p0, callback) {
  dwr.engine._execute(ajaxtool._path, 'ajaxtool', 'getSpecZyInfo', p0, callback);
}
ajaxtool.getLwDykc = function(p0, p1, callback) {
  dwr.engine._execute(ajaxtool._path, 'ajaxtool', 'getLwDykc', p0, p1, callback);
}
ajaxtool.getNjbInfo = function(callback) {
  dwr.engine._execute(ajaxtool._path, 'ajaxtool', 'getNjbInfo', callback);
}
ajaxtool.getBzrNjbInfo = function(callback) {
  dwr.engine._execute(ajaxtool._path, 'ajaxtool', 'getBzrNjbInfo', callback);
}
ajaxtool.getBzrBjbInfo = function(p0, p1, callback) {
  dwr.engine._execute(ajaxtool._path, 'ajaxtool', 'getBzrBjbInfo', p0, p1, callback);
}
ajaxtool.getBzrZybInfo = function(callback) {
  dwr.engine._execute(ajaxtool._path, 'ajaxtool', 'getBzrZybInfo', callback);
}
ajaxtool.getXaqbInfo = function(callback) {
  dwr.engine._execute(ajaxtool._path, 'ajaxtool', 'getXaqbInfo', callback);
}
ajaxtool.getJxlInfo = function(p0, callback) {
  dwr.engine._execute(ajaxtool._path, 'ajaxtool', 'getJxlInfo', p0, callback);
}
ajaxtool.getXnxqInfo = function(callback) {
  dwr.engine._execute(ajaxtool._path, 'ajaxtool', 'getXnxqInfo', callback);
}
ajaxtool.getLwbgsqInfo = function(p0, p1, callback) {
  dwr.engine._execute(ajaxtool._path, 'ajaxtool', 'getLwbgsqInfo', p0, p1, callback);
}
ajaxtool.getTeacherInfo = function(p0, p1, callback) {
  dwr.engine._execute(ajaxtool._path, 'ajaxtool', 'getTeacherInfo', p0, p1, callback);
}
ajaxtool.getStudentName = function(p0, callback) {
  dwr.engine._execute(ajaxtool._path, 'ajaxtool', 'getStudentName', p0, callback);
}
ajaxtool.getLwbgsqInfo2 = function(p0, p1, callback) {
  dwr.engine._execute(ajaxtool._path, 'ajaxtool', 'getLwbgsqInfo2', p0, p1, callback);
}
ajaxtool.checkLw = function(p0, callback) {
  dwr.engine._execute(ajaxtool._path, 'ajaxtool', 'checkLw', p0, callback);
}
ajaxtool.getNewLwInfo = function(p0, callback) {
  dwr.engine._execute(ajaxtool._path, 'ajaxtool', 'getNewLwInfo', p0, callback);
}
ajaxtool.getMaxStuNum = function(p0, p1, callback) {
  dwr.engine._execute(ajaxtool._path, 'ajaxtool', 'getMaxStuNum', p0, p1, callback);
}
ajaxtool.getYtmxx = function(p0, p1, callback) {
  dwr.engine._execute(ajaxtool._path, 'ajaxtool', 'getYtmxx', p0, p1, callback);
}
