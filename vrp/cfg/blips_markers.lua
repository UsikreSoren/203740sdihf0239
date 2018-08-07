
-- this file is used to define additional static blips and markers to the map
-- some lists: https://wiki.gtanet.work/index.php?title=Blips

local cfg = {}

-- list of blips
-- {x,y,z,idtype,idcolor,text}
cfg.blips = {
  {-1202.96252441406,-1566.14086914063,4.61040639877319,311,17,"Body training"},
  {460.190338134766,-993.888488769531,24.914867401123,60,17,"Police Station"},
  {1853.21, 3689.51, 34.2671,60,17,"Police Station"},
  {391.541442871094,-1615.154296875,29.291934967041,60,17,"Police Station"}, 
  {112.576049804688,-1073.62414550781,29.1923503875732,419,7,"President Station"},
  {266.009552001953,213.467010498047,101.683372497559,431,4,"Robbery Bank"},
  {436.566589355469,-994.532653808594,30.6895885467529,315,4,"Driver License"},
  {358.404418945313,-588.177612304688,28.8007564544678,61,3,"Hospital Station"},
  {415.2883605957,-1652.4112548828,29.291698455811,446,47,"Repair Station"},
  {236.41926574707,216.96081542969,106.28672790527,434,4,"Bank Driver Station"}
  
}

-- list of markers
-- {x,y,z,sx,sy,sz,r,g,b,a,visible_distance}
cfg.markers = {
}

return cfg
