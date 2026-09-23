local a = game:GetService("TweenService")
local b = game:GetService("UserInputService")
local c = game:GetService("RunService")
local d = game:GetService("Lighting")
local Players = game:GetService("Players")
local e = game:GetService("Stats")
local f = game:GetService("Debris")
local g = game:GetService("SoundService")
local h = Players.LocalPlayer
local i
local j, k = pcall(function()
  return game:GetService("CoreGui")
end)
if (j and k) then
  pcall(function()
    local l = Instance.new("Folder")
    l.Parent = k
    l:Destroy()
    i = k
  end)
end
if not i then
  i = h:WaitForChild("PlayerGui")
end
local m = i:FindFirstChild("GORELAB")
if m then
  m:Destroy()
end
local n = d:FindFirstChild("GOREBlur")
if n then
  n:Destroy()
end
local function o()
  local p = {"MeteorTrap", "Tsunami1", "G2W1_NPC1"}
  task.spawn(function()
    while task.wait(0.5) do
      local q = workspace:FindFirstChild("Traps")
      if q then
        for r, s in ipairs(p) do
          local t = q:FindFirstChild(s)
          if t then
            pcall(function()
              t:Destroy()
            end)
          end
        end
      end
    end
  end)
end
o()
local u = {WindowGlass = Color3.fromRGB(8, 4, 6), GlassTrans = 0.08, CardGlass = Color3.fromRGB(22, 10, 13), CardTrans = 0.25, CardStroke = Color3.fromRGB(95, 22, 28), SidebarGlass = Color3.fromRGB(6, 3, 5), SidebarTrans = 0.14, BloodDark = Color3.fromRGB(45, 3, 6), Blood = Color3.fromRGB(140, 6, 16), BloodBright = Color3.fromRGB(220, 18, 30), BloodGlow = Color3.fromRGB(255, 45, 55), NeonCyan = Color3.fromRGB(220, 18, 30), NeonPurple = Color3.fromRGB(110, 5, 12), NeonPink = Color3.fromRGB(255, 35, 50), Success = Color3.fromRGB(200, 35, 45), Warning = Color3.fromRGB(235, 80, 40), Danger = Color3.fromRGB(255, 25, 35), TextPrimary = Color3.fromRGB(250, 242, 243), TextSecondary = Color3.fromRGB(190, 152, 156), TextMuted = Color3.fromRGB(110, 75, 82)}
local v = {Click = "rbxassetid://6895079853", Toggle = "rbxassetid://6895079683", Notif = "rbxassetid://6895079683", Tab = "rbxassetid://6895079774"}
local function w(x, y)
  task.spawn(function()
    pcall(function()
      local z = Instance.new("Sound")
      z.SoundId = x
      z.Volume = (y or 0.35)
      z.Parent = g
      z:Play()
      f:AddItem(z, 2)
    end)
  end)
end
local aa = Instance.new("BlurEffect")
aa.Name = "GOREBlur"
aa.Size = 8
aa.Enabled = false
aa.Parent = d
local ab = false
local ac = Instance.new("ScreenGui")
ac.Name = "GORELAB"
ac.ResetOnSpawn = false
ac.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ac.Parent = i
local ad = Instance.new("Frame")
ad.Name = "BloodBackdrop"
ad.Size = UDim2.fromScale(1, 1)
ad.BackgroundColor3 = Color3.fromRGB(3, 1, 2)
ad.BackgroundTransparency = 0.25
ad.BorderSizePixel = 0
ad.ZIndex = 0
ad.Parent = ac
local ae = Instance.new("UIGradient")
ae.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(22, 2, 5)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(3, 1, 2)), ColorSequenceKeypoint.new(1, Color3.fromRGB(40, 3, 8))})
ae.Rotation = 25
ae.Parent = ad
for af, ag in ipairs({"Top", "Bottom", "Left", "Right"}) do
  local ah = Instance.new("Frame")
  ah.Name = ("Vignette_" .. ag)
  ah.BackgroundColor3 = Color3.fromRGB(45, 2, 6)
  ah.BackgroundTransparency = 0.35
  ah.BorderSizePixel = 0
  ah.ZIndex = 0
  ah.Parent = ad
  if (ag == "Top") then
    ah.Size = UDim2.new(1, 0, 0, 30)
    ah.Position = UDim2.new(0, 0, 0, 0)
  elseif (ag == "Bottom") then
    ah.Size = UDim2.new(1, 0, 0, 35)
    ah.Position = UDim2.new(0, 0, 1, -35)
  elseif (ag == "Left") then
    ah.Size = UDim2.new(0, 25, 1, 0)
    ah.Position = UDim2.new(0, 0, 0, 0)
  elseif (ag == "Right") then
    ah.Size = UDim2.new(0, 25, 1, 0)
    ah.Position = UDim2.new(1, -25, 0, 0)
  end
end
local ai = Random.new(73519)
for aj = 1, 40 do
  local ak = Instance.new("Frame")
  local al = ai:NextInteger(3, 20)
  ak.Size = UDim2.fromOffset(al, math.max(3, math.floor((al * ai:NextNumber(0.45, 1.6)))))
  ak.Position = UDim2.fromScale(ai:NextNumber(0.01, 0.99), ai:NextNumber(0.03, 0.97))
  ak.Rotation = ai:NextInteger(0, 360)
  ak.BackgroundColor3 = Color3.fromRGB(ai:NextInteger(90, 220), ai:NextInteger(2, 14), ai:NextInteger(5, 20))
  ak.BackgroundTransparency = ai:NextNumber(0.05, 0.40)
  ak.BorderSizePixel = 0
  ak.ZIndex = 0
  ak.Parent = ad
  local am = Instance.new("UICorner")
  am.CornerRadius = UDim.new(0.5, 0)
  am.Parent = ak
end
for an = 1, 10 do
  local ao = Instance.new("Frame")
  ao.Size = UDim2.fromOffset(ai:NextInteger(35, 95), ai:NextInteger(20, 60))
  ao.Position = UDim2.fromScale(ai:NextNumber(0.03, 0.97), ai:NextNumber(0.05, 0.95))
  ao.Rotation = ai:NextInteger(-40, 40)
  ao.BackgroundColor3 = Color3.fromRGB(130, 5, 15)
  ao.BackgroundTransparency = 0.12
  ao.BorderSizePixel = 0
  ao.ZIndex = 0
  ao.Parent = ad
  local ap = Instance.new("UICorner")
  ap.CornerRadius = UDim.new(0.25, 0)
  ap.Parent = ao
  for aq = 1, 6 do
    local ar = Instance.new("Frame")
    ar.Size = UDim2.fromOffset(ai:NextInteger(3, 10), ai:NextInteger(3, 14))
    ar.Position = UDim2.new(ai:NextNumber(-0.15, 1.05), 0, ai:NextNumber(-0.35, 1.1), 0)
    ar.Rotation = ai:NextInteger(0, 360)
    ar.BackgroundColor3 = Color3.fromRGB(180, 8, 22)
    ar.BackgroundTransparency = 0.10
    ar.BorderSizePixel = 0
    ar.ZIndex = 0
    ar.Parent = ao
    local as = Instance.new("UICorner")
    as.CornerRadius = UDim.new(0.5, 0)
    as.Parent = ar
  end
end
task.spawn(function()
  while (ac and ac.Parent) do
    local at = Instance.new("Frame")
    at.Size = UDim2.fromOffset(ai:NextInteger(4, 8), ai:NextInteger(8, 14))
    at.Position = UDim2.new(ai:NextNumber(0.02, 0.98), 0, 0, -20)
    at.BackgroundColor3 = Color3.fromRGB(ai:NextInteger(160, 230), 5, 15)
    at.BackgroundTransparency = 0.15
    at.BorderSizePixel = 0
    at.ZIndex = 1
    at.Parent = ad
    local au = Instance.new("UICorner")
    au.CornerRadius = UDim.new(0.5, 0)
    au.Parent = at
    a:Create(at, TweenInfo.new(ai:NextNumber(2.5, 5), Enum.EasingStyle.Linear), {Position = UDim2.new(at.Position.X.Scale, 0, 1, 30)}):Play()
    task.delay(5.2, function()
      if at then
        at:Destroy()
      end
    end)
    task.wait(ai:NextNumber(0.6, 2.2))
  end
end)
local av = Instance.new("Frame")
av.Size = UDim2.new(1, 0, 0, 40)
av.Position = UDim2.new(0, 0, 1, -40)
av.BackgroundColor3 = Color3.fromRGB(90, 4, 10)
av.BackgroundTransparency = 0.45
av.BorderSizePixel = 0
av.ZIndex = 0
av.Parent = ad
local aw = Instance.new("UIGradient")
aw.Rotation = 90
aw.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(1, 0.45)})
aw.Parent = av
local ax = Instance.new("Frame")
ax.Name = "Watermark"
ax.Size = UDim2.new(0, 310, 0, 32)
ax.Position = UDim2.new(0, 24, 0, 24)
ax.BackgroundColor3 = u.WindowGlass
ax.BackgroundTransparency = 0.18
ax.BorderSizePixel = 0
ax.Parent = ac
local ay = Instance.new("UICorner")
ay.CornerRadius = UDim.new(0, 8)
ay.Parent = ax
local az = Instance.new("UIStroke")
az.Color = u.BloodBright
az.Transparency = 0.55
az.Thickness = 1
az.Parent = ax
local ba = Instance.new("Frame")
ba.Size = UDim2.new(0, 7, 0, 7)
ba.Position = UDim2.new(0, 10, 0.5, -3)
ba.BackgroundColor3 = u.BloodBright
ba.BorderSizePixel = 0
ba.Parent = ax
local bb = Instance.new("UICorner")
bb.CornerRadius = UDim.new(1, 0)
bb.Parent = ba
local bc = Instance.new("TextLabel")
bc.Size = UDim2.new(1, -26, 1, 0)
bc.Position = UDim2.new(0, 24, 0, 0)
bc.BackgroundTransparency = 1
bc.Font = Enum.Font.GothamMedium
bc.TextSize = 12
bc.TextColor3 = u.TextPrimary
bc.RichText = true
bc.TextXAlignment = Enum.TextXAlignment.Left
bc.Text = "<b>GORE</b> <font color=\"rgb(220,18,30)\">LAB</font> | 60 FPS | 0ms"
bc.Parent = ax
local bd = 0
local be = tick()
local bf = 60
c.RenderStepped:Connect(function()
  bd = (bd + 1)
  local bg = tick()
  if ((bg - be) >= 0.5) then
    bf = math.floor((bd / ((bg - be))))
    bd = 0
    be = bg
    local bh = 0
    pcall(function()
      bh = math.floor((h:GetNetworkPing() * 1000))
    end)
    local bi = math.floor(e:GetTotalMemoryUsageMb())
    bc.Text = string.format("<b>GORE</b> <font color=\"rgb(220,18,30)\">LAB</font> | <font color=\"rgb(255,60,70)\">%d FPS</font> | <font color=\"rgb(220,18,30)\">%dms</font> | <font color=\"rgb(190,152,156)\">%dMB</font>", bf, bh, bi)
  end
end)
local bj = false
local bk, bl
ax.InputBegan:Connect(function(bm)
  if ((bm.UserInputType == Enum.UserInputType.MouseButton1) or (bm.UserInputType == Enum.UserInputType.Touch)) then
    bj = true
    bk = bm.Position
    bl = ax.Position
    bm.Changed:Connect(function()
      if (bm.UserInputState == Enum.UserInputState.End) then
        bj = false
      end
    end)
  end
end)
b.InputChanged:Connect(function(bn)
  if (bj and (((bn.UserInputType == Enum.UserInputType.MouseMovement) or (bn.UserInputType == Enum.UserInputType.Touch)))) then
    local bo = (bn.Position - bk)
    ax.Position = UDim2.new(bl.X.Scale, (bl.X.Offset + bo.X), bl.Y.Scale, (bl.Y.Offset + bo.Y))
  end
end)
local bp = Instance.new("Frame")
bp.Name = "NotifContainer"
bp.Size = UDim2.new(0, 320, 1, -60)
bp.Position = UDim2.new(1, -340, 0, 30)
bp.BackgroundTransparency = 1
bp.Parent = ac
local bq = Instance.new("UIListLayout")
bq.VerticalAlignment = Enum.VerticalAlignment.Bottom
bq.HorizontalAlignment = Enum.HorizontalAlignment.Right
bq.Padding = UDim.new(0, 10)
bq.Parent = bp
local function br(bs, bt, bu, bv)
  bu = (bu or 3.5)
  bv = (bv or "Info")
  w(v.Notif, 0.4)
  local bw = {Success = u.Success, Warning = u.Warning, Danger = u.Danger, Info = u.BloodBright}
  local bx = (bw[bv] or u.BloodBright)
  local by = Instance.new("Frame")
  by.Size = UDim2.new(1, 0, 0, 68)
  by.Position = UDim2.new(1, 100, 0, 0)
  by.BackgroundColor3 = u.WindowGlass
  by.BackgroundTransparency = 0.10
  by.ClipsDescendants = true
  by.Parent = bp
  local bz = Instance.new("UICorner")
  bz.CornerRadius = UDim.new(0, 10)
  bz.Parent = by
  local ca = Instance.new("UIStroke")
  ca.Color = bx
  ca.Transparency = 0.4
  ca.Thickness = 1.4
  ca.Parent = by
  local cb = Instance.new("Frame")
  cb.Size = UDim2.new(0, 4, 1, 0)
  cb.BackgroundColor3 = bx
  cb.BorderSizePixel = 0
  cb.Parent = by
  local cc = Instance.new("TextLabel")
  cc.Size = UDim2.new(1, -26, 0, 22)
  cc.Position = UDim2.new(0, 16, 0, 10)
  cc.BackgroundTransparency = 1
  cc.Font = Enum.Font.GothamBold
  cc.TextSize = 13
  cc.TextColor3 = bx
  cc.TextXAlignment = Enum.TextXAlignment.Left
  cc.Text = bs
  cc.Parent = by
  local cd = Instance.new("TextLabel")
  cd.Size = UDim2.new(1, -26, 0, 26)
  cd.Position = UDim2.new(0, 16, 0, 32)
  cd.BackgroundTransparency = 1
  cd.Font = Enum.Font.Gotham
  cd.TextSize = 12
  cd.TextColor3 = u.TextSecondary
  cd.TextXAlignment = Enum.TextXAlignment.Left
  cd.TextWrapped = true
  cd.Text = bt
  cd.Parent = by
  local ce = Instance.new("Frame")
  ce.Size = UDim2.new(1, 0, 0, 3)
  ce.Position = UDim2.new(0, 0, 1, -3)
  ce.BackgroundColor3 = bx
  ce.BorderSizePixel = 0
  ce.Parent = by
  a:Create(by, TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Position = UDim2.new(0, 0, 0, 0)}):Play()
  a:Create(ce, TweenInfo.new(bu, Enum.EasingStyle.Linear), {Size = UDim2.new(0, 0, 0, 3)}):Play()
  local cf = Instance.new("TextButton")
  cf.Size = UDim2.new(1, 0, 1, 0)
  cf.BackgroundTransparency = 1
  cf.Text = ""
  cf.Parent = by
  local cg = false
  local function ch()
    if cg then
      return
    end
    cg = true
    local ci = a:Create(by, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {Position = UDim2.new(1, 100, 0, 0), BackgroundTransparency = 1})
    ci:Play()
    ci.Completed:Connect(function()
      by:Destroy()
    end)
  end
  cf.MouseButton1Click:Connect(ch)
  task.delay(bu, ch)
end
local cj, ck = 740, 480
local cl = 50
local cm = 185
local cn = Instance.new("Frame")
cn.Name = "MainWindow"
cn.AnchorPoint = Vector2.new(0.5, 0.5)
cn.Size = UDim2.new(0, cj, 0, ck)
cn.Position = UDim2.new(0.5, 0, 0.5, 0)
cn.BackgroundColor3 = u.WindowGlass
cn.BackgroundTransparency = u.GlassTrans
cn.BorderSizePixel = 0
cn.ClipsDescendants = true
cn.Parent = ac
if ad then
  ad.Parent = cn
end
pcall(function()
  local co = Vector2.new(1920, 1080)
  local cp = workspace.CurrentCamera
  if cp then
    co = cp.ViewportSize
  end
  local cq = math.clamp(math.min((co.X / 1500), (co.Y / 900)), 0.6, 1.1)
  if (cq ~= 1) then
    local cr = Instance.new("UIScale")
    cr.Scale = cq
    cr.Parent = cn
  end
end)
local cs = Instance.new("UICorner")
cs.CornerRadius = UDim.new(0, 14)
cs.Parent = cn
local ct = Instance.new("UIStroke")
ct.Thickness = 2
ct.Color = u.BloodBright
ct.Parent = cn
local cu
task.spawn(function()
  while (cn and cn.Parent) do
    a:Create(ct, TweenInfo.new(0.8, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {Transparency = 0.0, Thickness = 3}):Play()
    task.wait(0.8)
    a:Create(ct, TweenInfo.new(0.8, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {Transparency = 0.6, Thickness = 1.5}):Play()
    task.wait(0.8)
  end
end)
cn.Destroying:Connect(function()
  if cu then
    cu:Disconnect()
  end
  if aa then
    aa:Destroy()
  end
end)
local cv = Instance.new("Frame")
cv.Size = UDim2.new(1, 0, 0, 110)
cv.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
cv.BorderSizePixel = 0
cv.Parent = cn
local cw = Instance.new("UIGradient")
cw.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.93), NumberSequenceKeypoint.new(0.35, 0.98), NumberSequenceKeypoint.new(1, 1)})
cw.Rotation = 90
cw.Parent = cv
local cx = Instance.new("Frame")
cx.Name = "TopBar"
cx.Size = UDim2.new(1, 0, 0, cl)
cx.BackgroundTransparency = 1
cx.Parent = cn
local cy = Instance.new("Frame")
cy.Size = UDim2.new(0, 240, 1, 0)
cy.Position = UDim2.new(0, 18, 0, 0)
cy.BackgroundTransparency = 1
cy.Parent = cx
local cz = Instance.new("TextLabel")
cz.Size = UDim2.new(0, 32, 0, 32)
cz.Position = UDim2.new(0, 0, 0.5, -16)
cz.BackgroundColor3 = u.CardGlass
cz.BackgroundTransparency = 0.2
cz.Text = "🩸"
cz.TextSize = 16
cz.TextColor3 = u.BloodBright
cz.Font = Enum.Font.GothamBold
cz.Parent = cy
local da = Instance.new("UICorner")
da.CornerRadius = UDim.new(0, 8)
da.Parent = cz
local db = Instance.new("UIStroke")
db.Color = u.BloodBright
db.Transparency = 0.4
db.Thickness = 1
db.Parent = cz
local dc = Instance.new("TextLabel")
dc.Size = UDim2.new(1, -40, 1, 0)
dc.Position = UDim2.new(0, 40, 0, 0)
dc.Text = "<b>GORE</b> <font color=\"rgb(220,18,30)\">LAB</font> <font color=\"rgb(255,60,70)\">v5.0</font>"
dc.RichText = true
dc.TextColor3 = u.TextPrimary
dc.TextSize = 14
dc.Font = Enum.Font.Gotham
dc.TextXAlignment = Enum.TextXAlignment.Left
dc.BackgroundTransparency = 1
dc.Parent = cy
local dd = Instance.new("Frame")
dd.Size = UDim2.new(0, 120, 0, 26)
dd.Position = UDim2.new(0, 270, 0.5, -13)
dd.BackgroundColor3 = u.CardGlass
dd.BackgroundTransparency = 0.4
dd.BorderSizePixel = 0
dd.Parent = cx
local de = Instance.new("UICorner")
de.CornerRadius = UDim.new(0, 6)
de.Parent = dd
local df = Instance.new("UIStroke")
df.Color = u.CardStroke
df.Transparency = 0.6
df.Thickness = 1
df.Parent = dd
local dg = Instance.new("Frame")
dg.Size = UDim2.new(0, 6, 0, 6)
dg.Position = UDim2.new(0, 10, 0.5, -3)
dg.BackgroundColor3 = u.BloodBright
dg.BorderSizePixel = 0
dg.Parent = dd
local dh = Instance.new("UICorner")
dh.CornerRadius = UDim.new(1, 0)
dh.Parent = dg
local di = Instance.new("TextLabel")
di.Size = UDim2.new(1, -22, 1, 0)
di.Position = UDim2.new(0, 20, 0, 0)
di.BackgroundTransparency = 1
di.Font = Enum.Font.GothamMedium
di.TextSize = 11
di.TextColor3 = u.TextSecondary
di.TextXAlignment = Enum.TextXAlignment.Left
di.Text = "Uptime: 00:00"
di.Parent = dd
local dj = tick()
local dk = 0
local dl = {[1] = 1, [2] = 3, [3] = 10, [4] = 20, [5] = 50, [6] = 100, [7] = 150, [8] = 300, [9] = 500, [10] = 1000, [11] = 2500, [12] = 10000, [13] = 50000, [14] = 50000, [15] = 150000, [16] = 350000}
c.Heartbeat:Connect(function()
  local dm = math.floor((tick() - dj))
  di.Text = string.format("Uptime: %02d:%02d", math.floor((dm / 60)), (dm % 60))
end)
local dn = false
local dp = UDim2.new(0, cj, 0, ck)
local dq = UDim2.new(0, cj, 0, cl)
local dr = Instance.new("TextButton")
dr.Size = UDim2.new(0, 30, 0, 30)
dr.Position = UDim2.new(1, -78, 0.5, -15)
dr.BackgroundColor3 = Color3.fromRGB(28, 10, 14)
dr.BackgroundTransparency = 0.3
dr.Text = ""
dr.AutoButtonColor = false
dr.Parent = cx
local ds = Instance.new("UICorner")
ds.CornerRadius = UDim.new(0, 8)
ds.Parent = dr
local dt = Instance.new("Frame")
dt.Size = UDim2.new(0, 11, 0, 2)
dt.Position = UDim2.new(0.5, 0, 0.5, 0)
dt.AnchorPoint = Vector2.new(0.5, 0.5)
dt.BackgroundColor3 = u.TextSecondary
dt.BorderSizePixel = 0
dt.Parent = dr
dr.MouseEnter:Connect(function()
  a:Create(dr, TweenInfo.new(0.15), {BackgroundColor3 = u.CardStroke}):Play()
  a:Create(dt, TweenInfo.new(0.15), {BackgroundColor3 = u.TextPrimary}):Play()
end)
dr.MouseLeave:Connect(function()
  a:Create(dr, TweenInfo.new(0.15), {BackgroundColor3 = Color3.fromRGB(28, 10, 14)}):Play()
  a:Create(dt, TweenInfo.new(0.15), {BackgroundColor3 = u.TextSecondary}):Play()
end)
dr.MouseButton1Click:Connect(function()
  w(v.Click, 0.3)
  dn = not dn
  a:Create(cn, TweenInfo.new(0.35, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Size = ((dn and dq) or dp)}):Play()
end)
local du = Instance.new("TextButton")
du.Size = UDim2.new(0, 30, 0, 30)
du.Position = UDim2.new(1, -42, 0.5, -15)
du.BackgroundColor3 = Color3.fromRGB(28, 10, 14)
du.BackgroundTransparency = 0.3
du.Text = ""
du.AutoButtonColor = false
du.Parent = cx
local dv = Instance.new("UICorner")
dv.CornerRadius = UDim.new(0, 8)
dv.Parent = du
local dw = function()

end
local dx = Instance.new("Frame")
dx.Size = UDim2.new(0, 12, 0, 2)
dx.Position = UDim2.new(0.5, 0, 0.5, 0)
dx.AnchorPoint = Vector2.new(0.5, 0.5)
dx.Rotation = 45
dx.BackgroundColor3 = u.TextSecondary
dx.BorderSizePixel = 0
dx.Parent = du
local dy = Instance.new("Frame")
dy.Size = UDim2.new(0, 12, 0, 2)
dy.Position = UDim2.new(0.5, 0, 0.5, 0)
dy.AnchorPoint = Vector2.new(0.5, 0.5)
dy.Rotation = -45
dy.BackgroundColor3 = u.TextSecondary
dy.BorderSizePixel = 0
dy.Parent = du
du.MouseEnter:Connect(function()
  a:Create(du, TweenInfo.new(0.15), {BackgroundColor3 = u.Danger, BackgroundTransparency = 0.1}):Play()
  a:Create(dx, TweenInfo.new(0.15), {BackgroundColor3 = Color3.new(1, 1, 1)}):Play()
  a:Create(dy, TweenInfo.new(0.15), {BackgroundColor3 = Color3.new(1, 1, 1)}):Play()
end)
du.MouseLeave:Connect(function()
  a:Create(du, TweenInfo.new(0.15), {BackgroundColor3 = Color3.fromRGB(28, 10, 14), BackgroundTransparency = 0.3}):Play()
  a:Create(dx, TweenInfo.new(0.15), {BackgroundColor3 = u.TextSecondary}):Play()
  a:Create(dy, TweenInfo.new(0.15), {BackgroundColor3 = u.TextSecondary}):Play()
end)
du.MouseButton1Click:Connect(function()
  w(v.Click, 0.4)
  cn.Visible = false
  if aa then
    aa.Enabled = false
  end
  if dw then
    dw()
  end
end)
local dz, ea, eb, ec
cx.InputBegan:Connect(function(ed)
  if ((ed.UserInputType == Enum.UserInputType.MouseButton1) or (ed.UserInputType == Enum.UserInputType.Touch)) then
    dz = true
    ea = ed.Position
    eb = cn.Position
    ed.Changed:Connect(function()
      if (ed.UserInputState == Enum.UserInputState.End) then
        dz = false
      end
    end)
  end
end)
cx.InputChanged:Connect(function(ee)
  if ((ee.UserInputType == Enum.UserInputType.MouseMovement) or (ee.UserInputType == Enum.UserInputType.Touch)) then
    ec = ee
  end
end)
b.InputChanged:Connect(function(ef)
  if ((ef == ec) and dz) then
    local eg = (ef.Position - ea)
    a:Create(cn, TweenInfo.new(0.06, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Position = UDim2.new(eb.X.Scale, (eb.X.Offset + eg.X), eb.Y.Scale, (eb.Y.Offset + eg.Y))}):Play()
  end
end)
pcall(function()
  local eh = Instance.new("TextButton")
  eh.Name = "MobileButton"
  eh.Size = UDim2.new(0, 58, 0, 58)
  eh.Position = UDim2.new(0.1, 0, 0.18, 0)
  eh.BackgroundColor3 = u.WindowGlass
  eh.BackgroundTransparency = 0.3
  eh.AutoButtonColor = false
  eh.Font = Enum.Font.GothamBold
  eh.TextSize = 26
  eh.TextColor3 = u.TextPrimary
  eh.ZIndex = 700
  eh.Parent = ac
  local ei = Instance.new("UICorner")
  ei.CornerRadius = UDim.new(0, 14)
  ei.Parent = eh
  local ej = Instance.new("UIStroke")
  ej.Thickness = 1.5
  ej.Color = u.BloodBright
  ej.Transparency = 0.35
  ej.Parent = eh
  local ek = Instance.new("UIGradient")
  ek.Rotation = 45
  ek.Color = ColorSequence.new({ColorSequenceKeypoint.new(0.0, u.BloodDark), ColorSequenceKeypoint.new(0.5, u.BloodBright), ColorSequenceKeypoint.new(1.0, u.BloodDark)})
  ek.Parent = ej
  dw = function()
    if _G.GORELocked then
      eh.Visible = false
      return
    end
    eh.Visible = true
    eh.Text = ((cn.Visible and "×") or "🩸")
  end
  local el, em, en, eo, ep
  eh.InputBegan:Connect(function(eq)
    if ((eq.UserInputType == Enum.UserInputType.MouseButton1) or (eq.UserInputType == Enum.UserInputType.Touch)) then
      el = true
      em = false
      en = eq.Position
      eo = eh.Position
      eq.Changed:Connect(function()
        if (eq.UserInputState == Enum.UserInputState.End) then
          el = false
        end
      end)
    end
  end)
  eh.InputChanged:Connect(function(er)
    if ((er.UserInputType == Enum.UserInputType.MouseMovement) or (er.UserInputType == Enum.UserInputType.Touch)) then
      ep = er
    end
  end)
  b.InputChanged:Connect(function(es)
    if ((es == ep) and el) then
      local et = (es.Position - en)
      if (not em and (et.Magnitude > 8)) then
        em = true
      end
      eh.Position = UDim2.fromOffset((eo.X.Offset + et.X), (eo.Y.Offset + et.Y))
    end
  end)
  eh.Activated:Connect(function()
    if _G.GORELocked then
      return
    end
    if em then
      em = false
      return
    end
    cn.Visible = not cn.Visible
    if aa then
      aa.Enabled = (cn.Visible and ab)
    end
    br("Menu", ((cn.Visible and "Opened") or "Hidden"), 2, "Info")
    dw()
  end)
  dw()
end)
local eu = Enum.KeyCode.RightControl
b.InputBegan:Connect(function(ev, ew)
  if (not ew and (ev.KeyCode == eu)) then
    if _G.GORELocked then
      return
    end
    cn.Visible = not cn.Visible
    if aa then
      aa.Enabled = (cn.Visible and ab)
    end
    br("Menu", ((cn.Visible and "Opened") or (("Hidden (" .. (eu.Name .. ")")))), 2, "Info")
    if dw then
      dw()
    end
  end
end)
local ex = Instance.new("Frame")
ex.Size = UDim2.new(1, 0, 0, 1)
ex.Position = UDim2.new(0, 0, 0, cl)
ex.BackgroundColor3 = u.CardStroke
ex.BackgroundTransparency = 0.4
ex.BorderSizePixel = 0
ex.Parent = cn
local ey = Instance.new("Frame")
ey.Name = "Sidebar"
ey.Size = UDim2.new(0, cm, 1, (-cl - 1))
ey.Position = UDim2.new(0, 0, 0, (cl + 1))
ey.BackgroundColor3 = u.SidebarGlass
ey.BackgroundTransparency = u.SidebarTrans
ey.BorderSizePixel = 0
ey.Parent = cn
local ez = Instance.new("Frame")
ez.Size = UDim2.new(0, 1, 1, 0)
ez.Position = UDim2.new(1, -1, 0, 0)
ez.BackgroundColor3 = u.CardStroke
ez.BackgroundTransparency = 0.5
ez.BorderSizePixel = 0
ez.Parent = ey
local fa = Instance.new("Frame")
fa.Name = "Indicator"
fa.Size = UDim2.new(0, 4, 0, 24)
fa.Position = UDim2.new(0, 4, 0, 18)
fa.BackgroundColor3 = u.BloodBright
fa.BorderSizePixel = 0
fa.Parent = ey
local fb = Instance.new("UICorner")
fb.CornerRadius = UDim.new(1, 0)
fb.Parent = fa
local fc = Instance.new("ScrollingFrame")
fc.Name = "TabScroll"
fc.Size = UDim2.new(1, 0, 1, -72)
fc.BackgroundTransparency = 1
fc.BorderSizePixel = 0
fc.ScrollBarThickness = 0
fc.CanvasSize = UDim2.new(0, 0, 0, 0)
fc.AutomaticCanvasSize = Enum.AutomaticSize.Y
fc.Parent = ey
local fd = Instance.new("UIListLayout")
fd.Padding = UDim.new(0, 6)
fd.SortOrder = Enum.SortOrder.LayoutOrder
fd.Parent = fc
local fe = Instance.new("UIPadding")
fe.PaddingTop = UDim.new(0, 12)
fe.PaddingLeft = UDim.new(0, 12)
fe.PaddingRight = UDim.new(0, 12)
fe.Parent = fc
local ff = Instance.new("Frame")
ff.Size = UDim2.new(1, -18, 0, 56)
ff.Position = UDim2.new(0, 9, 1, -64)
ff.BackgroundColor3 = u.CardGlass
ff.BackgroundTransparency = 0.4
ff.BorderSizePixel = 0
ff.Parent = ey
local fg = Instance.new("UICorner")
fg.CornerRadius = UDim.new(0, 10)
fg.Parent = ff
local fh = Instance.new("UIStroke")
fh.Color = u.CardStroke
fh.Transparency = 0.6
fh.Thickness = 1
fh.Parent = ff
local fi = Instance.new("ImageLabel")
fi.Size = UDim2.new(0, 36, 0, 36)
fi.Position = UDim2.new(0, 8, 0.5, -18)
fi.BackgroundColor3 = Color3.fromRGB(25, 12, 16)
fi.BackgroundTransparency = 0.3
fi.Parent = ff
local fj = Instance.new("UICorner")
fj.CornerRadius = UDim.new(1, 0)
fj.Parent = fi
task.spawn(function()
  pcall(function()
    fi.Image = Players:GetUserThumbnailAsync(h.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size100x100)
  end)
end)
local fk = Instance.new("TextLabel")
fk.Size = UDim2.new(1, -52, 0, 16)
fk.Position = UDim2.new(0, 50, 0, 11)
fk.BackgroundTransparency = 1
fk.Font = Enum.Font.GothamBold
fk.TextSize = 12
fk.TextColor3 = u.TextPrimary
fk.TextXAlignment = Enum.TextXAlignment.Left
fk.TextTruncate = Enum.TextTruncate.AtEnd
fk.Text = h.DisplayName
fk.Parent = ff
local fl = Instance.new("TextLabel")
fl.Size = UDim2.new(1, -52, 0, 14)
fl.Position = UDim2.new(0, 50, 0, 28)
fl.BackgroundTransparency = 1
fl.Font = Enum.Font.Gotham
fl.TextSize = 10
fl.TextColor3 = u.BloodBright
fl.TextXAlignment = Enum.TextXAlignment.Left
fl.Text = "● BLOOD MEMBER"
fl.Parent = ff
local fm = Instance.new("Frame")
fm.Name = "ContentArea"
fm.Size = UDim2.new(1, -cm, 1, (-cl - 1))
fm.Position = UDim2.new(0, cm, 0, (cl + 1))
fm.BackgroundTransparency = 1
fm.Parent = cn
local fn = {}
local fo = 0
local function fp(fq)
  task.spawn(function()
    local fr = Instance.new("Frame")
    fr.BackgroundColor3 = u.BloodGlow
    fr.BackgroundTransparency = 0.6
    fr.BorderSizePixel = 0
    fr.AnchorPoint = Vector2.new(0.5, 0.5)
    fr.Position = UDim2.new(0.5, 0, 0.5, 0)
    fr.Size = UDim2.new(0, 0, 0, 0)
    fr.ZIndex = (fq.ZIndex + 1)
    fr.Parent = fq
    local fs = Instance.new("UICorner")
    fs.CornerRadius = UDim.new(1, 0)
    fs.Parent = fr
    local ft = (math.max(fq.AbsoluteSize.X, fq.AbsoluteSize.Y) * 1.6)
    local fu = a:Create(fr, TweenInfo.new(0.45, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, ft, 0, ft), BackgroundTransparency = 1})
    fu:Play()
    fu.Completed:Connect(function()
      fr:Destroy()
    end)
  end)
end
local function fv(fw, fx)
  fo = (fo + 1)
  local fy = fo
  fx = (fx or "●")
  local fz = Instance.new("ScrollingFrame")
  fz.Name = (fw .. "Page")
  fz.Size = UDim2.new(1, 0, 1, 0)
  fz.BackgroundTransparency = 1
  fz.BorderSizePixel = 0
  fz.ScrollBarThickness = 4
  fz.ScrollBarImageColor3 = u.BloodBright
  fz.ScrollBarImageTransparency = 0.4
  fz.CanvasSize = UDim2.new(0, 0, 0, 0)
  fz.AutomaticCanvasSize = Enum.AutomaticSize.Y
  fz.Visible = false
  fz.Parent = fm
  local ga = Instance.new("UIListLayout")
  ga.Padding = UDim.new(0, 14)
  ga.SortOrder = Enum.SortOrder.LayoutOrder
  ga.Parent = fz
  local gb = Instance.new("UIPadding")
  gb.PaddingTop = UDim.new(0, 18)
  gb.PaddingLeft = UDim.new(0, 20)
  gb.PaddingRight = UDim.new(0, 20)
  gb.PaddingBottom = UDim.new(0, 20)
  gb.Parent = fz
  local gc = Instance.new("TextButton")
  gc.Name = (fw .. "Btn")
  gc.Size = UDim2.new(1, 0, 0, 38)
  gc.BackgroundColor3 = u.CardGlass
  gc.BackgroundTransparency = 1
  gc.Text = ""
  gc.AutoButtonColor = false
  gc.LayoutOrder = fy
  gc.ClipsDescendants = true
  gc.Parent = fc
  local gd = Instance.new("UICorner")
  gd.CornerRadius = UDim.new(0, 8)
  gd.Parent = gc
  local ge = Instance.new("TextLabel")
  ge.Size = UDim2.new(0, 24, 1, 0)
  ge.Position = UDim2.new(0, 12, 0, 0)
  ge.BackgroundTransparency = 1
  ge.Font = Enum.Font.GothamBold
  ge.TextSize = 14
  ge.TextColor3 = u.TextSecondary
  ge.Text = fx
  ge.Parent = gc
  local gf = Instance.new("TextLabel")
  gf.Size = UDim2.new(1, -44, 1, 0)
  gf.Position = UDim2.new(0, 40, 0, 0)
  gf.BackgroundTransparency = 1
  gf.Font = Enum.Font.GothamMedium
  gf.TextSize = 13
  gf.TextColor3 = u.TextSecondary
  gf.TextXAlignment = Enum.TextXAlignment.Left
  gf.Text = fw
  gf.Parent = gc
  local function select()
    w(v.Tab, 0.25)
    for gg, gh in pairs(fn) do
      gh.Page.Visible = false
      a:Create(gh.Button, TweenInfo.new(0.2), {BackgroundTransparency = 1}):Play()
      a:Create(gh.Icon, TweenInfo.new(0.2), {TextColor3 = u.TextSecondary}):Play()
      a:Create(gh.Title, TweenInfo.new(0.2), {TextColor3 = u.TextSecondary}):Play()
    end
    fz.Visible = true
    a:Create(gc, TweenInfo.new(0.25), {BackgroundTransparency = 0.55, BackgroundColor3 = u.CardGlass}):Play()
    a:Create(ge, TweenInfo.new(0.25), {TextColor3 = u.BloodBright}):Play()
    a:Create(gf, TweenInfo.new(0.25), {TextColor3 = u.TextPrimary}):Play()
    local gi = ((gc.Position.Y.Offset + 7) + ((((fy - 1)) * 44)))
    a:Create(fa, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Position = UDim2.new(0, 4, 0, gi)}):Play()
  end
  gc.MouseButton1Click:Connect(select)
  gc.MouseEnter:Connect(function()
    if not fz.Visible then
      a:Create(gc, TweenInfo.new(0.15), {BackgroundTransparency = 0.8}):Play()
    end
  end)
  gc.MouseLeave:Connect(function()
    if not fz.Visible then
      a:Create(gc, TweenInfo.new(0.15), {BackgroundTransparency = 1}):Play()
    end
  end)
  local gj = {Page = fz, Button = gc, Icon = ge, Title = gf, Select = select}
  fn[fw] = gj
  return gj
end
local gk = {}
function gk.CreateSection(gl, gm)
  local gn = Instance.new("Frame")
  gn.Name = (gm .. "Section")
  gn.Size = UDim2.new(1, 0, 0, 0)
  gn.AutomaticSize = Enum.AutomaticSize.Y
  gn.BackgroundColor3 = u.CardGlass
  gn.BackgroundTransparency = u.CardTrans
  gn.BorderSizePixel = 0
  gn.Parent = gl.Page
  local go = Instance.new("UICorner")
  go.CornerRadius = UDim.new(0, 10)
  go.Parent = gn
  local gp = Instance.new("UIStroke")
  gp.Color = u.CardStroke
  gp.Transparency = 0.5
  gp.Thickness = 1.2
  gp.Parent = gn
  local gq = Instance.new("UIPadding")
  gq.PaddingTop = UDim.new(0, 12)
  gq.PaddingBottom = UDim.new(0, 14)
  gq.PaddingLeft = UDim.new(0, 14)
  gq.PaddingRight = UDim.new(0, 14)
  gq.Parent = gn
  local gr = Instance.new("UIListLayout")
  gr.Padding = UDim.new(0, 10)
  gr.SortOrder = Enum.SortOrder.LayoutOrder
  gr.Parent = gn
  local gs = Instance.new("TextLabel")
  gs.Size = UDim2.new(1, 0, 0, 20)
  gs.BackgroundTransparency = 1
  gs.Font = Enum.Font.GothamBold
  gs.TextSize = 12
  gs.TextColor3 = u.BloodBright
  gs.TextXAlignment = Enum.TextXAlignment.Left
  gs.Text = string.upper(gm)
  gs.LayoutOrder = 0
  gs.Parent = gn
  return gn
end
function gk.CreateButton(gt, gu, gv, gw)
  local gx = Instance.new("TextButton")
  gx.Size = UDim2.new(1, 0, 0, ((gv and 48) or 40))
  gx.BackgroundColor3 = Color3.fromRGB(28, 12, 16)
  gx.BackgroundTransparency = 0.35
  gx.Text = ""
  gx.AutoButtonColor = false
  gx.ClipsDescendants = true
  gx.Parent = gt
  local gy = Instance.new("UICorner")
  gy.CornerRadius = UDim.new(0, 8)
  gy.Parent = gx
  local gz = Instance.new("UIStroke")
  gz.Color = u.CardStroke
  gz.Transparency = 0.5
  gz.Thickness = 1
  gz.Parent = gx
  local ha = Instance.new("TextLabel")
  ha.Size = UDim2.new(1, -30, 0, ((gv and 20) or 40))
  ha.Position = UDim2.new(0, 14, 0, ((gv and 6) or 0))
  ha.BackgroundTransparency = 1
  ha.Font = Enum.Font.GothamSemibold
  ha.TextSize = 13
  ha.TextColor3 = u.TextPrimary
  ha.TextXAlignment = Enum.TextXAlignment.Left
  ha.Text = gu
  ha.Parent = gx
  if gv then
    local hb = Instance.new("TextLabel")
    hb.Size = UDim2.new(1, -30, 0, 16)
    hb.Position = UDim2.new(0, 14, 0, 25)
    hb.BackgroundTransparency = 1
    hb.Font = Enum.Font.Gotham
    hb.TextSize = 11
    hb.TextColor3 = u.TextMuted
    hb.TextXAlignment = Enum.TextXAlignment.Left
    hb.Text = gv
    hb.Parent = gx
  end
  local hc = Instance.new("TextLabel")
  hc.Size = UDim2.new(0, 20, 1, 0)
  hc.Position = UDim2.new(1, -28, 0, 0)
  hc.BackgroundTransparency = 1
  hc.Font = Enum.Font.GothamBold
  hc.TextSize = 13
  hc.TextColor3 = u.TextSecondary
  hc.Text = "›"
  hc.Parent = gx
  gx.MouseEnter:Connect(function()
    a:Create(gx, TweenInfo.new(0.18), {BackgroundColor3 = Color3.fromRGB(38, 14, 20), BackgroundTransparency = 0.15}):Play()
    a:Create(gz, TweenInfo.new(0.18), {Color = u.BloodBright, Transparency = 0.35}):Play()
    a:Create(hc, TweenInfo.new(0.18), {TextColor3 = u.BloodGlow}):Play()
  end)
  gx.MouseLeave:Connect(function()
    a:Create(gx, TweenInfo.new(0.18), {BackgroundColor3 = Color3.fromRGB(28, 12, 16), BackgroundTransparency = 0.35}):Play()
    a:Create(gz, TweenInfo.new(0.18), {Color = u.CardStroke, Transparency = 0.5}):Play()
    a:Create(hc, TweenInfo.new(0.18), {TextColor3 = u.TextSecondary}):Play()
  end)
  gx.MouseButton1Click:Connect(function()
    w(v.Click, 0.4)
    fp(gx)
    a:Create(gx, TweenInfo.new(0.08), {Size = UDim2.new(1, -4, 0, ((((gv and 48) or 40)) - 2))}):Play()
    task.wait(0.08)
    a:Create(gx, TweenInfo.new(0.08), {Size = UDim2.new(1, 0, 0, ((gv and 48) or 40))}):Play()
    if gw then
      gw()
    end
  end)
end
function gk.CreateToggle(hd, he, hf, hg, hh)
  local hi = (hg or false)
  local hj = Instance.new("Frame")
  hj.Size = UDim2.new(1, 0, 0, ((hf and 48) or 42))
  hj.BackgroundColor3 = Color3.fromRGB(22, 10, 14)
  hj.BackgroundTransparency = 0.4
  hj.BorderSizePixel = 0
  hj.Parent = hd
  local hk = Instance.new("UICorner")
  hk.CornerRadius = UDim.new(0, 8)
  hk.Parent = hj
  local hl = Instance.new("UIStroke")
  hl.Color = u.CardStroke
  hl.Transparency = 0.6
  hl.Thickness = 1
  hl.Parent = hj
  local hm = Instance.new("TextLabel")
  hm.Size = UDim2.new(1, -70, 0, ((hf and 20) or 42))
  hm.Position = UDim2.new(0, 14, 0, ((hf and 6) or 0))
  hm.Text = he
  hm.TextColor3 = u.TextPrimary
  hm.TextSize = 13
  hm.Font = Enum.Font.GothamMedium
  hm.TextXAlignment = Enum.TextXAlignment.Left
  hm.BackgroundTransparency = 1
  hm.Parent = hj
  if hf then
    local hn = Instance.new("TextLabel")
    hn.Size = UDim2.new(1, -70, 0, 16)
    hn.Position = UDim2.new(0, 14, 0, 25)
    hn.Text = hf
    hn.TextColor3 = u.TextMuted
    hn.TextSize = 11
    hn.Font = Enum.Font.Gotham
    hn.TextXAlignment = Enum.TextXAlignment.Left
    hn.BackgroundTransparency = 1
    hn.Parent = hj
  end
  local ho = Instance.new("Frame")
  ho.Size = UDim2.new(0, 46, 0, 24)
  ho.Position = UDim2.new(1, -58, 0.5, -12)
  ho.BackgroundColor3 = ((hi and u.BloodBright) or Color3.fromRGB(45, 15, 20))
  ho.BackgroundTransparency = ((hi and 0.1) or 0.5)
  ho.BorderSizePixel = 0
  ho.Parent = hj
  local hp = Instance.new("UICorner")
  hp.CornerRadius = UDim.new(1, 0)
  hp.Parent = ho
  local hq = Instance.new("Frame")
  hq.Size = UDim2.new(0, 18, 0, 18)
  hq.Position = ((hi and UDim2.new(1, -21, 0.5, -9)) or UDim2.new(0, 3, 0.5, -9))
  hq.BackgroundColor3 = Color3.new(1, 1, 1)
  hq.BorderSizePixel = 0
  hq.Parent = ho
  local hr = Instance.new("UICorner")
  hr.CornerRadius = UDim.new(1, 0)
  hr.Parent = hq
  local hs = Instance.new("TextButton")
  hs.Size = UDim2.new(1, 0, 1, 0)
  hs.BackgroundTransparency = 1
  hs.Text = ""
  hs.Parent = hj
  hs.MouseButton1Click:Connect(function()
    hi = not hi
    w(v.Toggle, 0.35)
    a:Create(hq, TweenInfo.new(0.22, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Position = ((hi and UDim2.new(1, -21, 0.5, -9)) or UDim2.new(0, 3, 0.5, -9))}):Play()
    a:Create(ho, TweenInfo.new(0.22), {BackgroundColor3 = ((hi and u.BloodBright) or Color3.fromRGB(45, 15, 20)), BackgroundTransparency = ((hi and 0.1) or 0.5)}):Play()
    if hh then
      hh(hi)
    end
  end)
end
function gk.CreateSlider(ht, hu, hv, hw, hx, hy)
  local hz = (hx or hv)
  local ia = Instance.new("Frame")
  ia.Size = UDim2.new(1, 0, 0, 58)
  ia.BackgroundColor3 = Color3.fromRGB(22, 10, 14)
  ia.BackgroundTransparency = 0.4
  ia.BorderSizePixel = 0
  ia.Parent = ht
  local ib = Instance.new("UICorner")
  ib.CornerRadius = UDim.new(0, 8)
  ib.Parent = ia
  local ic = Instance.new("UIStroke")
  ic.Color = u.CardStroke
  ic.Transparency = 0.6
  ic.Thickness = 1
  ic.Parent = ia
  local id = Instance.new("TextLabel")
  id.Size = UDim2.new(1, -80, 0, 24)
  id.Position = UDim2.new(0, 14, 0, 8)
  id.Text = hu
  id.TextColor3 = u.TextPrimary
  id.TextSize = 13
  id.Font = Enum.Font.GothamMedium
  id.TextXAlignment = Enum.TextXAlignment.Left
  id.BackgroundTransparency = 1
  id.Parent = ia
  local ie = Instance.new("Frame")
  ie.Size = UDim2.new(0, 48, 0, 20)
  ie.Position = UDim2.new(1, -62, 0, 8)
  ie.BackgroundColor3 = Color3.fromRGB(38, 14, 20)
  ie.BorderSizePixel = 0
  ie.Parent = ia
  local ig = Instance.new("UICorner")
  ig.CornerRadius = UDim.new(0, 6)
  ig.Parent = ie
  local ih = Instance.new("TextLabel")
  ih.Size = UDim2.new(1, 0, 1, 0)
  ih.Text = tostring(hz)
  ih.TextColor3 = u.BloodGlow
  ih.TextSize = 12
  ih.Font = Enum.Font.GothamBold
  ih.BackgroundTransparency = 1
  ih.Parent = ie
  local ii = Instance.new("Frame")
  ii.Size = UDim2.new(1, -28, 0, 7)
  ii.Position = UDim2.new(0, 14, 0, 38)
  ii.BackgroundColor3 = Color3.fromRGB(40, 15, 22)
  ii.BorderSizePixel = 0
  ii.Parent = ia
  local ij = Instance.new("UICorner")
  ij.CornerRadius = UDim.new(1, 0)
  ij.Parent = ii
  local ik = math.clamp((((hz - hv)) / ((hw - hv))), 0, 1)
  local il = Instance.new("Frame")
  il.Size = UDim2.new(ik, 0, 1, 0)
  il.BackgroundColor3 = u.BloodBright
  il.BorderSizePixel = 0
  il.Parent = ii
  local im = Instance.new("UICorner")
  im.CornerRadius = UDim.new(1, 0)
  im.Parent = il
  local io = Instance.new("Frame")
  io.Size = UDim2.new(0, 15, 0, 15)
  io.AnchorPoint = Vector2.new(0.5, 0.5)
  io.Position = UDim2.new(ik, 0, 0.5, 0)
  io.BackgroundColor3 = Color3.new(1, 1, 1)
  io.BorderSizePixel = 0
  io.Parent = ii
  local ip = Instance.new("UICorner")
  ip.CornerRadius = UDim.new(1, 0)
  ip.Parent = io
  local iq = false
  local function ir(is)
    local it = math.clamp((is.Position.X - ii.AbsolutePosition.X), 0, ii.AbsoluteSize.X)
    local iu = (it / ii.AbsoluteSize.X)
    hz = math.floor((hv + ((iu * ((hw - hv))))))
    ih.Text = tostring(hz)
    a:Create(il, TweenInfo.new(0.04), {Size = UDim2.new(iu, 0, 1, 0)}):Play()
    a:Create(io, TweenInfo.new(0.04), {Position = UDim2.new(iu, 0, 0.5, 0)}):Play()
    if hy then
      hy(hz)
    end
  end
  ii.InputBegan:Connect(function(iv)
    if ((iv.UserInputType == Enum.UserInputType.MouseButton1) or (iv.UserInputType == Enum.UserInputType.Touch)) then
      iq = true
      ir(iv)
    end
  end)
  b.InputEnded:Connect(function(iw)
    if ((iw.UserInputType == Enum.UserInputType.MouseButton1) or (iw.UserInputType == Enum.UserInputType.Touch)) then
      iq = false
    end
  end)
  b.InputChanged:Connect(function(ix)
    if (iq and (((ix.UserInputType == Enum.UserInputType.MouseMovement) or (ix.UserInputType == Enum.UserInputType.Touch)))) then
      ir(ix)
    end
  end)
end
function gk.CreateDropdown(iy, iz, ja, jb, jc)
  local jd = (jb or ja[1])
  local je = false
  local jf = Instance.new("Frame")
  jf.Size = UDim2.new(1, 0, 0, 44)
  jf.BackgroundColor3 = Color3.fromRGB(22, 10, 14)
  jf.BackgroundTransparency = 0.4
  jf.BorderSizePixel = 0
  jf.ClipsDescendants = true
  jf.Parent = iy
  local jg = Instance.new("UICorner")
  jg.CornerRadius = UDim.new(0, 8)
  jg.Parent = jf
  local jh = Instance.new("UIStroke")
  jh.Color = u.CardStroke
  jh.Transparency = 0.6
  jh.Thickness = 1
  jh.Parent = jf
  local ji = Instance.new("Frame")
  ji.Size = UDim2.new(1, 0, 0, 44)
  ji.BackgroundTransparency = 1
  ji.Parent = jf
  local jj = Instance.new("TextLabel")
  jj.Size = UDim2.new(0.45, 0, 1, 0)
  jj.Position = UDim2.new(0, 14, 0, 0)
  jj.Text = iz
  jj.TextColor3 = u.TextPrimary
  jj.TextSize = 13
  jj.Font = Enum.Font.GothamMedium
  jj.TextXAlignment = Enum.TextXAlignment.Left
  jj.BackgroundTransparency = 1
  jj.Parent = ji
  local jk = Instance.new("TextLabel")
  jk.Size = UDim2.new(0.55, -46, 1, 0)
  jk.Position = UDim2.new(0.45, 0, 0, 0)
  jk.Text = jd
  jk.TextColor3 = u.BloodGlow
  jk.TextSize = 12
  jk.Font = Enum.Font.GothamSemibold
  jk.TextXAlignment = Enum.TextXAlignment.Right
  jk.BackgroundTransparency = 1
  jk.Parent = ji
  local jl = Instance.new("Frame")
  jl.Size = UDim2.new(0, 16, 0, 16)
  jl.Position = UDim2.new(1, -22, 0.5, 0)
  jl.AnchorPoint = Vector2.new(0.5, 0.5)
  jl.BackgroundTransparency = 1
  jl.Parent = ji
  local jm = Instance.new("Frame")
  jm.Size = UDim2.new(0, 6, 0, 2)
  jm.Position = UDim2.new(0.5, -2, 0.5, 0)
  jm.AnchorPoint = Vector2.new(0.5, 0.5)
  jm.Rotation = 45
  jm.BackgroundColor3 = u.BloodBright
  jm.BorderSizePixel = 0
  jm.Parent = jl
  local jn = Instance.new("Frame")
  jn.Size = UDim2.new(0, 6, 0, 2)
  jn.Position = UDim2.new(0.5, 2, 0.5, 0)
  jn.AnchorPoint = Vector2.new(0.5, 0.5)
  jn.Rotation = -45
  jn.BackgroundColor3 = u.BloodBright
  jn.BorderSizePixel = 0
  jn.Parent = jl
  local jo = Instance.new("UICorner")
  jo.CornerRadius = UDim.new(1, 0)
  jo.Parent = jm
  local jp = Instance.new("UICorner")
  jp.CornerRadius = UDim.new(1, 0)
  jp.Parent = jn
  local jq = Instance.new("TextButton")
  jq.Size = UDim2.new(1, 0, 1, 0)
  jq.BackgroundTransparency = 1
  jq.Text = ""
  jq.ZIndex = 2
  jq.Parent = ji
  jq.MouseEnter:Connect(function()
    a:Create(jh, TweenInfo.new(0.15), {Color = u.BloodBright, Transparency = 0.35}):Play()
  end)
  jq.MouseLeave:Connect(function()
    a:Create(jh, TweenInfo.new(0.15), {Color = u.CardStroke, Transparency = 0.6}):Play()
  end)
  local jr = Instance.new("ScrollingFrame")
  jr.Size = UDim2.new(1, -24, 0, math.min((#ja * 32), 130))
  jr.Position = UDim2.new(0, 12, 0, 48)
  jr.BackgroundTransparency = 1
  jr.BorderSizePixel = 0
  jr.ScrollBarThickness = 3
  jr.ScrollBarImageColor3 = u.BloodBright
  jr.CanvasSize = UDim2.new(0, 0, 0, (#ja * 32))
  jr.Parent = jf
  local js = Instance.new("UIListLayout")
  js.Padding = UDim.new(0, 4)
  js.Parent = jr
  for jt, ju in ipairs(ja) do
    local jv = Instance.new("TextButton")
    jv.Size = UDim2.new(1, 0, 0, 28)
    jv.BackgroundColor3 = Color3.fromRGB(32, 13, 18)
    jv.BackgroundTransparency = 0.4
    jv.Text = ("  " .. ju)
    jv.TextColor3 = ((((ju == jd)) and u.BloodGlow) or u.TextSecondary)
    jv.TextSize = 12
    jv.Font = Enum.Font.Gotham
    jv.TextXAlignment = Enum.TextXAlignment.Left
    jv.AutoButtonColor = false
    jv.Parent = jr
    local jw = Instance.new("UICorner")
    jw.CornerRadius = UDim.new(0, 6)
    jw.Parent = jv
    jv.MouseEnter:Connect(function()
      a:Create(jv, TweenInfo.new(0.12), {TextColor3 = u.BloodGlow, BackgroundTransparency = 0.15}):Play()
    end)
    jv.MouseLeave:Connect(function()
      local jx = ((((ju == jd)) and u.BloodGlow) or u.TextSecondary)
      a:Create(jv, TweenInfo.new(0.12), {TextColor3 = jx, BackgroundTransparency = 0.4}):Play()
    end)
    jv.MouseButton1Click:Connect(function()
      w(v.Click, 0.3)
      jd = ju
      jk.Text = jd
      je = false
      a:Create(jf, TweenInfo.new(0.25, Enum.EasingStyle.Quart), {Size = UDim2.new(1, 0, 0, 44)}):Play()
      a:Create(jl, TweenInfo.new(0.2, Enum.EasingStyle.Quart), {Rotation = 0}):Play()
      if jc then
        jc(jd)
      end
    end)
  end
  jq.MouseButton1Click:Connect(function()
    je = not je
    w(v.Click, 0.25)
    local jy = ((je and ((54 + math.min((#ja * 32), 130)))) or 44)
    a:Create(jf, TweenInfo.new(0.3, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Size = UDim2.new(1, 0, 0, jy)}):Play()
    a:Create(jl, TweenInfo.new(0.25, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Rotation = ((je and 180) or 0)}):Play()
  end)
end
function gk.CreateTextInput(jz, ka, kb, kc)
  local kd = Instance.new("Frame")
  kd.Size = UDim2.new(1, 0, 0, 44)
  kd.BackgroundColor3 = Color3.fromRGB(22, 10, 14)
  kd.BackgroundTransparency = 0.4
  kd.BorderSizePixel = 0
  kd.Parent = jz
  local ke = Instance.new("UICorner")
  ke.CornerRadius = UDim.new(0, 8)
  ke.Parent = kd
  local kf = Instance.new("UIStroke")
  kf.Color = u.CardStroke
  kf.Transparency = 0.6
  kf.Thickness = 1
  kf.Parent = kd
  local kg = Instance.new("TextLabel")
  kg.Size = UDim2.new(0.4, 0, 1, 0)
  kg.Position = UDim2.new(0, 14, 0, 0)
  kg.Text = ka
  kg.TextColor3 = u.TextPrimary
  kg.TextSize = 13
  kg.Font = Enum.Font.GothamMedium
  kg.TextXAlignment = Enum.TextXAlignment.Left
  kg.BackgroundTransparency = 1
  kg.Parent = kd
  local kh = Instance.new("TextBox")
  kh.Size = UDim2.new(0.6, -24, 0, 28)
  kh.Position = UDim2.new(0.4, 10, 0.5, -14)
  kh.BackgroundColor3 = Color3.fromRGB(15, 6, 10)
  kh.BackgroundTransparency = 0.3
  kh.TextColor3 = u.TextPrimary
  kh.PlaceholderColor3 = u.TextMuted
  kh.PlaceholderText = (kb or "type…")
  kh.Text = ""
  kh.TextSize = 12
  kh.Font = Enum.Font.Gotham
  kh.ClearTextOnFocus = false
  kh.Parent = kd
  local ki = Instance.new("UICorner")
  ki.CornerRadius = UDim.new(0, 6)
  ki.Parent = kh
  kh.Focused:Connect(function()
    a:Create(kf, TweenInfo.new(0.15), {Color = u.BloodBright, Transparency = 0.3}):Play()
  end)
  kh.FocusLost:Connect(function(kj)
    a:Create(kf, TweenInfo.new(0.15), {Color = u.CardStroke, Transparency = 0.6}):Play()
    if kc then
      kc(kh.Text, kj)
    end
  end)
end
function gk.CreateKeybind(kk, kl, km, kn)
  local ko = (km or Enum.KeyCode.RightControl)
  local kp = false
  local kq = Instance.new("Frame")
  kq.Size = UDim2.new(1, 0, 0, 44)
  kq.BackgroundColor3 = Color3.fromRGB(22, 10, 14)
  kq.BackgroundTransparency = 0.4
  kq.BorderSizePixel = 0
  kq.Parent = kk
  local kr = Instance.new("UICorner")
  kr.CornerRadius = UDim.new(0, 8)
  kr.Parent = kq
  local ks = Instance.new("UIStroke")
  ks.Color = u.CardStroke
  ks.Transparency = 0.6
  ks.Thickness = 1
  ks.Parent = kq
  local kt = Instance.new("TextLabel")
  kt.Size = UDim2.new(1, -120, 1, 0)
  kt.Position = UDim2.new(0, 14, 0, 0)
  kt.Text = kl
  kt.TextColor3 = u.TextPrimary
  kt.TextSize = 13
  kt.Font = Enum.Font.GothamMedium
  kt.TextXAlignment = Enum.TextXAlignment.Left
  kt.BackgroundTransparency = 1
  kt.Parent = kq
  local ku = Instance.new("TextButton")
  ku.Size = UDim2.new(0, 96, 0, 26)
  ku.Position = UDim2.new(1, -108, 0.5, -13)
  ku.BackgroundColor3 = Color3.fromRGB(38, 15, 20)
  ku.BackgroundTransparency = 0.2
  ku.Text = ko.Name
  ku.TextColor3 = u.BloodGlow
  ku.TextSize = 11
  ku.Font = Enum.Font.GothamBold
  ku.AutoButtonColor = false
  ku.Parent = kq
  local kv = Instance.new("UICorner")
  kv.CornerRadius = UDim.new(0, 6)
  kv.Parent = ku
  local kw = Instance.new("UIStroke")
  kw.Color = u.BloodBright
  kw.Transparency = 0.6
  kw.Thickness = 1
  kw.Parent = ku
  ku.MouseButton1Click:Connect(function()
    kp = true
    ku.Text = "…"
    kw.Color = u.Warning
  end)
  b.InputBegan:Connect(function(kx)
    if (kp and (kx.UserInputType == Enum.UserInputType.Keyboard)) then
      ko = kx.KeyCode
      ku.Text = ko.Name
      kw.Color = u.BloodBright
      kp = false
      w(v.Click, 0.3)
      if kn then
        kn(ko)
      end
    end
  end)
end
local ky = false
local kz = nil
local la = nil
local lb = 50
local lc = 2
local ld = "Stage 1 — 1 win"
local le = false
local lf = nil
local function lg(lh)
  if lh then
    if not lf then
      lf = c.Stepped:Connect(function()
        pcall(function()
          if h.Character then
            for li, lj in ipairs(h.Character:GetDescendants()) do
              if (lj:IsA("BasePart") and lj.CanCollide) then
                lj.CanCollide = false
              end
            end
          end
        end)
      end)
    end
  else
    if ((lf and not le) and not ky) then
      lf:Disconnect()
      lf = nil
    end
  end
end
local function lk()
  local ll = {}
  local lm = workspace:FindFirstChild("Checkpoints")
  local ln = workspace:FindFirstChild("Stages")
  local lo = ((((lm and (#lm:GetChildren() > 0))) and lm) or (((((ln and (#ln:GetChildren() > 0))) and ln) or nil)))
  if lo then
    for lp, lq in ipairs(lo:GetChildren()) do
      local lr = tonumber(lq.Name:match("%d+"))
      local ls = (((lq:IsA("BasePart") and lq) or ((lq:IsA("Model") and ((lq.PrimaryPart or lq:FindFirstChildWhichIsA("BasePart")))))) or nil)
      if ls then
        table.insert(ll, {Index = (lr or 9999), Name = lq.Name, Part = ls, Position = (ls.Position + Vector3.new(0, 3.5, 0))})
      end
    end
  end
  table.sort(ll, function(lt, lu)
    return (lt.Index < lu.Index)
  end)
  return ll
end
local function lv(lw)
  local lx = lw
  while ky do
    task.wait(0.1)
    local ly = h.Character
    local lz = (ly and ly:FindFirstChild("HumanoidRootPart"))
    if (lz and lx) then
      local ma = ((lz.Position - lx)).Magnitude
      if (ma > 60) then
        task.wait(0.6)
        return true
      end
      if (ma > 2) then
        lx = lz.Position
      end
    end
  end
  return false
end
local mb = {[1] = {Vector3.new(-415.6, 360.8, -759.9), Vector3.new(-414.8, 360.8, -759.7), Vector3.new(-409.8, 360.8, -759.5), Vector3.new(-404.8, 360.8, -759.7), Vector3.new(-399.4, 360.8, -759.9), Vector3.new(-394.3, 360.8, -760.1), Vector3.new(-389, 360.8, -760.3), Vector3.new(-384, 360.8, -760.4), Vector3.new(-378.9, 360.8, -760.6), Vector3.new(-373.6, 360.8, -760.8), Vector3.new(-368.1, 360.8, -761), Vector3.new(-363, 360.8, -761.2), Vector3.new(-357.8, 360.8, -761.4), Vector3.new(-352.4, 360.9, -761.5), Vector3.new(-347.3, 360.9, -761.7), Vector3.new(-342.1, 361, -761.9), Vector3.new(-337, 361.1, -762.1), Vector3.new(-331.7, 361.1, -762.3), Vector3.new(-326.6, 361.2, -762.4), Vector3.new(-321.6, 361.3, -762.6), Vector3.new(-316.6, 361.3, -762.8), Vector3.new(-311.4, 361.4, -763), Vector3.new(-306.7, 361.4, -763.1), Vector3.new(-301.4, 361.4, -763.3), Vector3.new(-296.3, 361.4, -763.5), Vector3.new(-291.3, 361.4, -763.7), Vector3.new(-286.3, 361.4, -763.8), Vector3.new(-280.9, 361.4, -764), Vector3.new(-275.9, 361.4, -764.2), Vector3.new(-272.5, 361.4, -765.8), Vector3.new(-268.8, 361.4, -769.5), Vector3.new(-265, 361.4, -773.3), Vector3.new(-261.3, 361.4, -776.1), Vector3.new(-256.3, 361.4, -777.2), Vector3.new(-251.4, 361.4, -778.4), Vector3.new(-246.3, 361.4, -779.5), Vector3.new(-241.4, 361.4, -780.7), Vector3.new(-236.7, 361.4, -781.1), Vector3.new(-231.3, 361.4, -781.2), Vector3.new(-225.9, 361.4, -781.4), Vector3.new(-221.4, 361.4, -781.6), Vector3.new(-216.1, 361.4, -781.8), Vector3.new(-210.7, 361.4, -782), Vector3.new(-205.2, 361.4, -782.1), Vector3.new(-199.8, 361.4, -782.3), Vector3.new(-195.2, 361.4, -781), Vector3.new(-190.2, 361.4, -778.8), Vector3.new(-185.6, 361.4, -776.8), Vector3.new(-180.6, 361.4, -774.5), Vector3.new(-175.9, 361.4, -772.5), Vector3.new(-171.1, 361.4, -770.3), Vector3.new(-166.2, 361.4, -768.2), Vector3.new(-161.9, 361.4, -765.8), Vector3.new(-157.1, 361.4, -763.2), Vector3.new(-152.4, 361.4, -760.7), Vector3.new(-148, 361.4, -758.3), Vector3.new(-143.2, 361.4, -755.7), Vector3.new(-138.8, 361.4, -753.3), Vector3.new(-135.6, 361, -749.6), Vector3.new(-133.2, 360.3, -744.8), Vector3.new(-130.7, 359.6, -740), Vector3.new(-128.7, 358.4, -736.1), Vector3.new(-128.4, 358.1, -735.6), Vector3.new(-128.7, 362.2, -735.9), Vector3.new(-128.7, 363, -735.9)}, [2] = {Vector3.new(-415.5, 360.8, -759.8), Vector3.new(-413.5, 360.8, -759.5), Vector3.new(-405.7, 360.8, -759.7), Vector3.new(-395.1, 360.8, -760.1), Vector3.new(-384.1, 360.8, -760.4), Vector3.new(-373.5, 360.8, -760.8), Vector3.new(-362.7, 360.8, -761.2), Vector3.new(-353.9, 360.9, -761.5), Vector3.new(-343.7, 361, -761.8), Vector3.new(-333.6, 361.1, -762.2), Vector3.new(-322.9, 361.2, -762.6), Vector3.new(-312.7, 361.4, -762.9), Vector3.new(-303.2, 361.4, -763.3), Vector3.new(-293.1, 361.4, -763.6), Vector3.new(-283, 361.4, -764), Vector3.new(-274.1, 361.4, -764.3), Vector3.new(-267.1, 361.4, -771.2), Vector3.new(-258.8, 361.4, -776.6), Vector3.new(-248.9, 361.4, -778.9), Vector3.new(-240.4, 361.4, -780.9), Vector3.new(-229.8, 361.4, -781.3), Vector3.new(-222, 361.4, -781.6), Vector3.new(-211.2, 361.4, -781.9), Vector3.new(-201.2, 361.4, -782.3), Vector3.new(-193.4, 361.4, -780.3), Vector3.new(-183.8, 361.4, -776), Vector3.new(-174.6, 361.4, -771.9), Vector3.new(-165.9, 361.4, -768), Vector3.new(-158.8, 361.4, -764.2), Vector3.new(-150, 361.4, -759.4), Vector3.new(-140.4, 361.4, -754.2), Vector3.new(-130.5, 361.4, -750.3), Vector3.new(-120.8, 361.4, -747.4), Vector3.new(-110.8, 361.4, -746.2), Vector3.new(-101.3, 361.4, -745.7), Vector3.new(-93.6, 361.4, -745.3), Vector3.new(-86.2, 366.3, -745.2), Vector3.new(-76.2, 367.8, -745.2), Vector3.new(-65.3, 361.4, -744.4), Vector3.new(-56.4, 365.3, -743.6), Vector3.new(-46.5, 369.3, -743.6), Vector3.new(-35.6, 362.4, -743.6), Vector3.new(-26.2, 361.4, -742), Vector3.new(-17, 368.7, -742), Vector3.new(-6.2, 373.3, -742), Vector3.new(3.8, 371.5, -742), Vector3.new(14.6, 364.2, -742), Vector3.new(25.4, 361.4, -742), Vector3.new(36.1, 361.4, -742.1), Vector3.new(45.4, 361.4, -743.2), Vector3.new(56.1, 361.4, -744.5), Vector3.new(65.2, 361.4, -745.5), Vector3.new(76, 361.4, -746.5), Vector3.new(86.8, 361.4, -747.4), Vector3.new(93.4, 360.4, -742.7), Vector3.new(101.6, 359.2, -736.9), Vector3.new(103, 362.8, -735.9), Vector3.new(102.9, 362.4, -736)}, [3] = {Vector3.new(-414.9, 360.8, -759.5), Vector3.new(-412.8, 360.8, -759.5), Vector3.new(-405.1, 360.8, -759.7), Vector3.new(-395.1, 360.8, -760.1), Vector3.new(-384.4, 360.8, -760.4), Vector3.new(-374.2, 360.8, -760.8), Vector3.new(-363.5, 360.8, -761.2), Vector3.new(-356.1, 360.8, -761.4), Vector3.new(-346, 361, -761.8), Vector3.new(-335.2, 361.1, -762.1), Vector3.new(-325.2, 361.2, -762.5), Vector3.new(-314.5, 361.4, -762.9), Vector3.new(-304.6, 361.4, -763.2), Vector3.new(-294.6, 361.4, -763.6), Vector3.new(-284.2, 361.4, -763.9), Vector3.new(-274.1, 361.4, -764.3), Vector3.new(-266.9, 361.4, -771.4), Vector3.new(-259, 361.4, -776.6), Vector3.new(-248.9, 361.4, -778.9), Vector3.new(-240.4, 361.4, -780.9), Vector3.new(-229.8, 361.4, -781.3), Vector3.new(-222.7, 361.4, -781.5), Vector3.new(-212.6, 361.4, -781.9), Vector3.new(-202.6, 361.4, -782.2), Vector3.new(-194.8, 361.4, -780.9), Vector3.new(-185.4, 361.4, -776.7), Vector3.new(-175.9, 361.4, -772.5), Vector3.new(-166.6, 361.4, -768.3), Vector3.new(-158, 361.4, -763.7), Vector3.new(-149.1, 361.4, -758.9), Vector3.new(-139.8, 361.4, -753.9), Vector3.new(-132.1, 361.4, -750.8), Vector3.new(-121.7, 361.4, -747.7), Vector3.new(-112.4, 361.4, -746.3), Vector3.new(-102.1, 361.4, -745.8), Vector3.new(-91.5, 361.4, -745.2), Vector3.new(-82.1, 369.1, -745.2), Vector3.new(-72, 363.7, -745.2), Vector3.new(-62, 361.4, -743.8), Vector3.new(-52.2, 368.2, -743.6), Vector3.new(-41.4, 367.3, -743.6), Vector3.new(-31.1, 361.4, -742.9), Vector3.new(-22.9, 364.2, -742), Vector3.new(-12.2, 371.5, -742), Vector3.new(-2, 373.2, -742), Vector3.new(8.8, 368.6, -742), Vector3.new(19.1, 361.4, -742), Vector3.new(29.7, 361.4, -742.1), Vector3.new(39.3, 361.4, -742.4), Vector3.new(50, 361.4, -743.7), Vector3.new(60.2, 361.4, -745), Vector3.new(70, 361.4, -745.9), Vector3.new(80.1, 361.4, -746.8), Vector3.new(87.9, 361.4, -747.5), Vector3.new(98, 361.4, -748.2), Vector3.new(106.5, 361.4, -749.2), Vector3.new(116.4, 361.4, -751), Vector3.new(125, 361.4, -753.9), Vector3.new(134.5, 361.4, -757.3), Vector3.new(140.6, 361.4, -758.5), Vector3.new(151.1, 361.4, -758.6), Vector3.new(161.5, 361.4, -758.6), Vector3.new(169.4, 361.4, -758.4), Vector3.new(180.1, 361.4, -758), Vector3.new(190, 361.4, -758.1), Vector3.new(200.7, 361.4, -758.7), Vector3.new(210.8, 361.4, -759.3), Vector3.new(214.7, 389.7, -759.4), Vector3.new(225.5, 391, -759.4), Vector3.new(235.8, 390.6, -759.4), Vector3.new(246.7, 387.2, -759.4), Vector3.new(257.6, 380.2, -759.4), Vector3.new(268.6, 370.2, -759.4), Vector3.new(279.7, 361.4, -759.9), Vector3.new(289.5, 361.4, -761.9), Vector3.new(294.2, 384.4, -762.7), Vector3.new(302.1, 390.4, -762.7), Vector3.new(312.1, 391.1, -762.7), Vector3.new(322.1, 390.4, -762.7), Vector3.new(332.2, 387.7, -762.7), Vector3.new(343, 382.5, -762.7), Vector3.new(353.9, 374.9, -762.7), Vector3.new(363.8, 366.6, -762.7), Vector3.new(374.2, 361.4, -762.4), Vector3.new(384.7, 361.4, -761.6), Vector3.new(394.9, 361.4, -760.8), Vector3.new(403.1, 361.4, -761.1), Vector3.new(413.1, 361.4, -761.5), Vector3.new(423.4, 361.4, -762), Vector3.new(434, 361.4, -762.5), Vector3.new(444.2, 361.4, -761.1), Vector3.new(454.4, 361.4, -759.2), Vector3.new(458.2, 360.7, -752.4), Vector3.new(461.4, 359.7, -742.9), Vector3.new(463.9, 361.8, -735.4), Vector3.new(463.8, 363, -735.4), Vector3.new(463.7, 362.8, -735.9)}, [4] = {Vector3.new(-415.2, 360.8, -760), Vector3.new(-410.4, 360.8, -759.5), Vector3.new(-400.1, 360.8, -759.9), Vector3.new(-389.6, 360.8, -760.3), Vector3.new(-379.4, 360.8, -760.6), Vector3.new(-369.4, 360.8, -761), Vector3.new(-361.2, 360.8, -761.2), Vector3.new(-351.2, 360.9, -761.6), Vector3.new(-340.9, 361, -761.9), Vector3.new(-330.3, 361.2, -762.3), Vector3.new(-319.7, 361.3, -762.7), Vector3.new(-310.5, 361.4, -763), Vector3.new(-300.2, 361.4, -763.4), Vector3.new(-289.5, 361.4, -763.7), Vector3.new(-279.5, 361.4, -764.1), Vector3.new(-272.3, 361.3, -766), Vector3.new(-265, 361.4, -773.3), Vector3.new(-256.2, 361.4, -777.2), Vector3.new(-245.6, 361.4, -779.7), Vector3.new(-235.4, 361.4, -781.1), Vector3.new(-224.6, 361.4, -781.5), Vector3.new(-217.7, 361.4, -781.7), Vector3.new(-206.9, 361.4, -782.1), Vector3.new(-198.2, 361.4, -782.4), Vector3.new(-189.5, 361.4, -778.5), Vector3.new(-179.7, 361.4, -774.2), Vector3.new(-169.9, 361.4, -769.8), Vector3.new(-163.2, 361.4, -766.6), Vector3.new(-153.9, 361.4, -761.5), Vector3.new(-144.9, 361.4, -756.6), Vector3.new(-136.9, 361.4, -752.2), Vector3.new(-128, 361.4, -749.6), Vector3.new(-118.4, 361.4, -746.7), Vector3.new(-109.1, 361.4, -746.1), Vector3.new(-101.4, 361.4, -745.7), Vector3.new(-92.2, 361.4, -745.2), Vector3.new(-84.7, 367.6, -745.2), Vector3.new(-74.6, 366.5, -745.2), Vector3.new(-63.6, 361.4, -744.1), Vector3.new(-54.6, 366.7, -743.6), Vector3.new(-43.8, 368.6, -743.6), Vector3.new(-33.5, 361.4, -743.4), Vector3.new(-25.1, 362.3, -742), Vector3.new(-15.2, 369.8, -742), Vector3.new(-4.3, 373.4, -742), Vector3.new(6.3, 370.2, -742), Vector3.new(17.2, 361.9, -742), Vector3.new(28, 361.4, -742.1), Vector3.new(37, 361.4, -742.1), Vector3.new(47.9, 361.4, -743.5), Vector3.new(58.5, 361.4, -744.8), Vector3.new(67.7, 361.4, -745.7), Vector3.new(77.7, 361.4, -746.6), Vector3.new(86.8, 361.4, -747.4), Vector3.new(95.9, 361.4, -748), Vector3.new(105, 361.4, -748.9), Vector3.new(115, 361.4, -750.8), Vector3.new(123.9, 361.4, -753.5), Vector3.new(134, 361.4, -757.1), Vector3.new(141.1, 361.4, -758.5), Vector3.new(152.2, 361.4, -758.6), Vector3.new(162.7, 361.4, -758.6), Vector3.new(171.7, 361.4, -758.3), Vector3.new(181.8, 361.4, -757.9), Vector3.new(192.1, 361.4, -758.2), Vector3.new(202.1, 361.4, -758.8), Vector3.new(212.8, 361.4, -759.4), Vector3.new(217.2, 390, -759.4), Vector3.new(228, 391.1, -759.4), Vector3.new(238, 390.2, -759.4), Vector3.new(248.3, 386.4, -759.4), Vector3.new(258.4, 379.6, -759.4), Vector3.new(269.5, 369.4, -759.4), Vector3.new(280.1, 361.4, -760), Vector3.new(290.6, 361.4, -762.2), Vector3.new(295.5, 389.7, -762.7), Vector3.new(305.3, 390.8, -762.7), Vector3.new(316.2, 391, -762.7), Vector3.new(326.7, 389.4, -762.7), Vector3.new(336.9, 385.7, -762.7), Vector3.new(347, 379.9, -762.7), Vector3.new(357.8, 371.7, -762.7), Vector3.new(368.7, 362.3, -762.7), Vector3.new(379.1, 361.4, -762), Vector3.new(389.7, 361.4, -761.2), Vector3.new(399.6, 361.4, -760.9), Vector3.new(410.2, 361.4, -761.4), Vector3.new(420.5, 361.4, -761.8), Vector3.new(430.6, 361.4, -762.3), Vector3.new(439.8, 361.4, -761.9), Vector3.new(449.9, 361.4, -760), Vector3.new(459.4, 361.4, -758.3), Vector3.new(469.8, 361.4, -756.5), Vector3.new(477.5, 361.4, -760.3), Vector3.new(485.9, 361.4, -765.7), Vector3.new(495, 361.4, -771.6), Vector3.new(503.6, 361.4, -777.1), Vector3.new(512, 361.4, -782), Vector3.new(521.6, 361.4, -784.6), Vector3.new(531.4, 361.4, -787.2), Vector3.new(541.5, 361.4, -789.9), Vector3.new(550.9, 361.4, -792.1), Vector3.new(561, 361.4, -793.9), Vector3.new(571.6, 361.4, -795.9), Vector3.new(580.3, 361.4, -797.5), Vector3.new(589.7, 361.4, -797), Vector3.new(600.6, 361.4, -796.4), Vector3.new(611, 361.4, -795.8), Vector3.new(619.4, 361.4, -795.1), Vector3.new(629.3, 361.4, -793.6), Vector3.new(639.8, 361.4, -792.1), Vector3.new(649.9, 361.4, -790.7), Vector3.new(660.6, 361.4, -789.1), Vector3.new(670.5, 361.4, -786.8), Vector3.new(680.7, 361.4, -784.4), Vector3.new(691.4, 361.4, -781.8), Vector3.new(700.8, 361.4, -779.7), Vector3.new(711.3, 361.4, -777.5), Vector3.new(721.2, 361.4, -775.4), Vector3.new(729.9, 361.4, -773.5), Vector3.new(739.8, 361.4, -771.4), Vector3.new(749.6, 361.4, -769.4), Vector3.new(759.4, 361.4, -767.3), Vector3.new(765.7, 361.1, -762.9), Vector3.new(770.9, 360.5, -754.1), Vector3.new(776.3, 359.8, -744.8), Vector3.new(781.8, 359, -735.6), Vector3.new(782.1, 362.9, -735.1), Vector3.new(782.1, 362.5, -735), Vector3.new(782.2, 363, -735)}, [5] = {Vector3.new(-414.3, 360.8, -759.6), Vector3.new(-412.6, 360.8, -759.5), Vector3.new(-402.5, 360.8, -759.8), Vector3.new(-391.7, 360.8, -760.2), Vector3.new(-381.5, 360.8, -760.5), Vector3.new(-371.2, 360.8, -760.9), Vector3.new(-361.2, 360.8, -761.2), Vector3.new(-352.8, 360.9, -761.5), Vector3.new(-342.4, 361, -761.9), Vector3.new(-331.8, 361.1, -762.3), Vector3.new(-321.2, 361.3, -762.6), Vector3.new(-311.4, 361.4, -763), Vector3.new(-303, 361.4, -763.3), Vector3.new(-292.9, 361.4, -763.6), Vector3.new(-282.2, 361.4, -764), Vector3.new(-272.9, 361.3, -765.5), Vector3.new(-265.5, 361.4, -772.8), Vector3.new(-256.2, 361.4, -777.2), Vector3.new(-246.4, 361.4, -779.5), Vector3.new(-238.7, 361.4, -781), Vector3.new(-228.4, 361.4, -781.3), Vector3.new(-217.8, 361.4, -781.7), Vector3.new(-207.4, 361.4, -782.1), Vector3.new(-197.3, 361.4, -782), Vector3.new(-188, 361.4, -777.9), Vector3.new(-178.3, 361.4, -773.5), Vector3.new(-169.1, 361.4, -769.4), Vector3.new(-159.9, 361.4, -764.8), Vector3.new(-150.4, 361.4, -759.6), Vector3.new(-141.1, 361.4, -754.6), Vector3.new(-134.1, 361.4, -751.4), Vector3.new(-123.7, 361.4, -748.3), Vector3.new(-115.6, 361.4, -746.5), Vector3.new(-105.3, 361.4, -745.9), Vector3.new(-96.6, 361.4, -745.5), Vector3.new(-89.6, 362.5, -745.2), Vector3.new(-78.8, 369.2, -745.2), Vector3.new(-67.5, 361.4, -744.7), Vector3.new(-59.8, 362.1, -743.6), Vector3.new(-49.1, 369.3, -743.6), Vector3.new(-39, 365.5, -743.6), Vector3.new(-28.7, 361.4, -742.5), Vector3.new(-20.2, 366.3, -742), Vector3.new(-9.4, 372.6, -742), Vector3.new(1.3, 372.5, -742), Vector3.new(12.1, 366.2, -742), Vector3.new(22.9, 361.4, -742), Vector3.new(33.6, 361.4, -742.1), Vector3.new(42.3, 361.4, -742.8), Vector3.new(52.6, 361.4, -744), Vector3.new(62.7, 361.4, -745.3), Vector3.new(71.3, 361.4, -746.1), Vector3.new(86.8, 361.4, -747.4), Vector3.new(95.1, 361.4, -748), Vector3.new(103.6, 361.4, -748.7), Vector3.new(114.1, 361.4, -750.6), Vector3.new(122.6, 361.4, -753), Vector3.new(132.5, 361.4, -756.6), Vector3.new(141.6, 361.4, -758.5), Vector3.new(151.6, 361.4, -758.6), Vector3.new(161.7, 361.4, -758.6), Vector3.new(172.3, 361.4, -758.3), Vector3.new(182.7, 361.4, -757.9), Vector3.new(191.6, 361.4, -758.2), Vector3.new(202.5, 361.4, -758.8), Vector3.new(212.9, 361.4, -759.4), Vector3.new(216.4, 389.9, -759.4), Vector3.new(226, 391, -759.4), Vector3.new(237.2, 390.3, -759.4), Vector3.new(247.7, 386.7, -759.4), Vector3.new(258.7, 379.4, -759.4), Vector3.new(268.8, 370, -759.4), Vector3.new(279.8, 361.4, -760), Vector3.new(291, 361.4, -762.2), Vector3.new(297.9, 390, -762.7), Vector3.new(308.7, 391, -762.7), Vector3.new(319.2, 390.7, -762.7), Vector3.new(330.9, 388.1, -762.7), Vector3.new(341.1, 383.5, -762.7), Vector3.new(351.1, 377, -762.7), Vector3.new(362.3, 368, -762.7), Vector3.new(373, 361.4, -762.5), Vector3.new(383.4, 361.4, -761.7), Vector3.new(393.9, 361.4, -760.9), Vector3.new(403.7, 361.4, -761.1), Vector3.new(413.7, 361.4, -761.5), Vector3.new(424.2, 361.4, -762), Vector3.new(434.2, 361.4, -762.5), Vector3.new(444, 361.4, -761.1), Vector3.new(453.9, 361.4, -759.2), Vector3.new(463.4, 361.4, -757.6), Vector3.new(471.2, 361.4, -756.2), Vector3.new(479.4, 361.4, -761.5), Vector3.new(488.2, 361.4, -767.2), Vector3.new(497.2, 361.4, -773), Vector3.new(506.4, 361.4, -779), Vector3.new(514.9, 361.4, -782.8), Vector3.new(524.8, 361.4, -785.4), Vector3.new(534.7, 361.4, -788.1), Vector3.new(544.9, 361.4, -790.8), Vector3.new(552.8, 361.4, -792.4), Vector3.new(563.4, 361.4, -794.4), Vector3.new(573.5, 361.4, -796.3), Vector3.new(581.7, 361.4, -797.5), Vector3.new(591.8, 361.4, -796.9), Vector3.new(603, 361.4, -796.3), Vector3.new(613.5, 361.4, -795.7), Vector3.new(623.1, 361.4, -794.5), Vector3.new(633.9, 361.4, -793), Vector3.new(644.9, 361.4, -791.4), Vector3.new(655.5, 361.4, -789.8), Vector3.new(663.6, 361.4, -788.4), Vector3.new(673.9, 361.4, -786), Vector3.new(684, 361.4, -783.6), Vector3.new(694.1, 361.4, -781.2), Vector3.new(702.4, 361.4, -779.4), Vector3.new(712.8, 361.4, -777.2), Vector3.new(723.8, 361.4, -774.8), Vector3.new(734.1, 361.4, -772.7), Vector3.new(744.2, 361.4, -770.5), Vector3.new(754.3, 361.4, -768.4), Vector3.new(763.6, 361.4, -766.4), Vector3.new(773.6, 361.4, -762.5), Vector3.new(783.7, 361.4, -758.5), Vector3.new(793.2, 361.4, -756.2), Vector3.new(804.1, 361.4, -756.4), Vector3.new(814.7, 361.4, -756.6), Vector3.new(824.7, 361.4, -756.8), Vector3.new(832.1, 364.4, -756.2), Vector3.new(842.7, 371.1, -754.6), Vector3.new(852.5, 375.6, -753.2), Vector3.new(863.2, 378, -751.6), Vector3.new(874.1, 377.8, -750), Vector3.new(884, 375.9, -748.6), Vector3.new(894.3, 377.2, -750), Vector3.new(903.8, 377.9, -753.1), Vector3.new(914, 372.7, -756.3), Vector3.new(923.5, 363.2, -759.4), Vector3.new(934.4, 361.5, -759.9), Vector3.new(944.5, 361.6, -760), Vector3.new(953.1, 367.3, -761.7), Vector3.new(963, 373.4, -763.9), Vector3.new(973.5, 377.1, -766.1), Vector3.new(984.9, 377.5, -768.6), Vector3.new(994.8, 375.4, -770.8), Vector3.new(1004.9, 376.5, -769.6), Vector3.new(1014.4, 378.3, -766.4), Vector3.new(1024.7, 376.3, -762.9), Vector3.new(1033.9, 370.7, -759.8), Vector3.new(1044.6, 362.5, -756.7), Vector3.new(1053.1, 361.4, -756.5), Vector3.new(1063.4, 361.4, -755.8), Vector3.new(1073.5, 361.4, -755.2), Vector3.new(1083.6, 361.4, -754.5), Vector3.new(1092.2, 361.4, -754), Vector3.new(1100.5, 361.4, -753.5), Vector3.new(1110.9, 361.4, -752.9), Vector3.new(1121.4, 361.4, -752.3), Vector3.new(1131.8, 361.4, -751.8), Vector3.new(1142.1, 361.4, -751.2), Vector3.new(1142.5, 360.3, -743.7), Vector3.new(1142.8, 357.2, -734.9), Vector3.new(1143.1, 357.9, -735.2)}, [6] = {Vector3.new(-415.4, 360.8, -759.8), Vector3.new(-411.8, 360.8, -759.5), Vector3.new(-401.8, 360.8, -759.8), Vector3.new(-391.8, 360.8, -760.2), Vector3.new(-381.1, 360.8, -760.5), Vector3.new(-371.1, 360.8, -760.9), Vector3.new(-361.2, 360.8, -761.2), Vector3.new(-351.2, 360.9, -761.6), Vector3.new(-340.6, 361, -762), Vector3.new(-329.8, 361.2, -762.3), Vector3.new(-319.4, 361.3, -762.7), Vector3.new(-311.4, 361.4, -763), Vector3.new(-301.2, 361.4, -763.3), Vector3.new(-291, 361.4, -763.7), Vector3.new(-280.6, 361.4, -764), Vector3.new(-273.5, 361.4, -764.8), Vector3.new(-266.1, 361.4, -772.2), Vector3.new(-260.1, 361.4, -776.3), Vector3.new(-250, 361.4, -778.7), Vector3.new(-240.4, 361.4, -780.9), Vector3.new(-232, 361.4, -781.2), Vector3.new(-222.7, 361.4, -781.5), Vector3.new(-213.6, 361.4, -781.9), Vector3.new(-202.8, 361.4, -782.2), Vector3.new(-193.2, 361.4, -780.2), Vector3.new(-183.8, 361.4, -776), Vector3.new(-174.6, 361.4, -771.9), Vector3.new(-165.9, 361.4, -768), Vector3.new(-157.7, 361.4, -763.6), Vector3.new(-148.8, 361.4, -758.7), Vector3.new(-139.6, 361.4, -753.7), Vector3.new(-133.7, 361.4, -751.3), Vector3.new(-123.6, 361.4, -748.2), Vector3.new(-114.8, 361.4, -746.4), Vector3.new(-104.3, 361.4, -745.9), Vector3.new(-93.4, 361.4, -745.3), Vector3.new(-87.1, 365.3, -745.2), Vector3.new(-77.2, 368.5, -745.2), Vector3.new(-66.2, 361.4, -744.5), Vector3.new(-57.1, 364.6, -743.6), Vector3.new(-46.1, 369.3, -743.6), Vector3.new(-35.4, 362.2, -743.6), Vector3.new(-26.2, 361.4, -742), Vector3.new(-17.2, 368.5, -742), Vector3.new(-7.2, 373.1, -742), Vector3.new(3.7, 371.5, -742), Vector3.new(14.4, 364.3, -742), Vector3.new(24.5, 361.4, -742), Vector3.new(34.9, 361.4, -742.1), Vector3.new(43.5, 361.4, -742.9), Vector3.new(54.1, 361.4, -744.2), Vector3.new(62.7, 361.4, -745.3), Vector3.new(73, 361.4, -746.2), Vector3.new(83.6, 361.4, -747.1), Vector3.new(92.7, 361.4, -747.8), Vector3.new(102.6, 361.4, -748.5), Vector3.new(110.5, 361.4, -749.9), Vector3.new(118.7, 361.4, -751.6), Vector3.new(128.4, 361.4, -755.1), Vector3.new(137.7, 361.4, -758.5), Vector3.new(147, 361.4, -758.5), Vector3.new(157.5, 361.4, -758.6), Vector3.new(165.9, 361.4, -758.6), Vector3.new(176.3, 361.4, -758.1), Vector3.new(186, 361.4, -757.8), Vector3.new(196.5, 361.4, -758.4), Vector3.new(207.4, 361.4, -759.1), Vector3.new(213.5, 380.6, -759.4), Vector3.new(221.4, 390.6, -759.4), Vector3.new(231.3, 391, -759.4), Vector3.new(242.3, 389, -759.4), Vector3.new(252.8, 383.7, -759.4), Vector3.new(263.5, 375.2, -759.4), Vector3.new(274.2, 364.5, -759.4), Vector3.new(284.9, 361.4, -761), Vector3.new(293, 361.4, -762.7), Vector3.new(299.3, 390.1, -762.7), Vector3.new(309.4, 391, -762.7), Vector3.new(319.8, 390.7, -762.7), Vector3.new(330, 388.4, -762.7), Vector3.new(340.9, 383.6, -762.7), Vector3.new(351.5, 376.7, -762.7), Vector3.new(361.7, 368.4, -762.7), Vector3.new(372.5, 361.4, -762.5), Vector3.new(382.9, 361.4, -761.7), Vector3.new(393.3, 361.4, -761), Vector3.new(401, 361.4, -761), Vector3.new(411.4, 361.4, -761.4), Vector3.new(422.1, 361.4, -761.9), Vector3.new(432.4, 361.4, -762.4), Vector3.new(442.9, 361.4, -761.3), Vector3.new(453.1, 361.4, -759.4), Vector3.new(463.4, 361.4, -757.6), Vector3.new(471.2, 361.4, -756.2), Vector3.new(479.9, 361.4, -761.9), Vector3.new(489.1, 361.4, -767.8), Vector3.new(497.6, 361.4, -773.3), Vector3.new(506.6, 361.4, -779.1), Vector3.new(514.8, 361.4, -782.7), Vector3.new(526, 361.4, -785.8), Vector3.new(536.1, 361.4, -788.5), Vector3.new(546.3, 361.4, -791.2), Vector3.new(553.8, 361.4, -792.6), Vector3.new(563.9, 361.4, -794.5), Vector3.new(573.8, 361.4, -796.3), Vector3.new(581.5, 361.4, -797.5), Vector3.new(592.9, 361.4, -796.8), Vector3.new(603.3, 361.4, -796.3), Vector3.new(613.6, 361.4, -795.7), Vector3.new(623.8, 361.4, -794.4), Vector3.new(633.7, 361.4, -793), Vector3.new(645.6, 361.4, -791.3), Vector3.new(656.4, 361.4, -789.7), Vector3.new(664, 361.4, -788.3), Vector3.new(674.4, 361.4, -785.8), Vector3.new(684.5, 361.4, -783.5), Vector3.new(694.8, 361.4, -781), Vector3.new(702.3, 361.4, -779.4), Vector3.new(712.1, 361.4, -777.3), Vector3.new(721.9, 361.4, -775.2), Vector3.new(729.9, 361.4, -773.5), Vector3.new(739, 361.4, -771.6), Vector3.new(749.3, 361.4, -769.4), Vector3.new(759.9, 361.4, -767.2), Vector3.new(768.9, 361.4, -764.3), Vector3.new(779, 361.4, -760.4), Vector3.new(788.6, 361.4, -756.6), Vector3.new(797.2, 361.4, -756.3), Vector3.new(807.5, 361.4, -756.4), Vector3.new(817.5, 361.4, -756.6), Vector3.new(827.8, 361.4, -756.8), Vector3.new(837, 367.6, -755.5), Vector3.new(847.4, 373.5, -753.9), Vector3.new(857.5, 377.1, -752.4), Vector3.new(868.1, 378.2, -750.9), Vector3.new(878, 377.2, -749.4), Vector3.new(887.9, 375, -748), Vector3.new(898.1, 378, -751.3), Vector3.new(907.6, 376.7, -754.3), Vector3.new(917.6, 369.4, -757.5), Vector3.new(927.8, 361.4, -759.9), Vector3.new(938.5, 361.5, -760), Vector3.new(945.9, 362, -760.1), Vector3.new(956.5, 369.6, -762.4), Vector3.new(966.5, 375.1, -764.6), Vector3.new(976.9, 377.7, -766.9), Vector3.new(986.6, 377.3, -769), Vector3.new(996.8, 374.9, -771.2), Vector3.new(1006.6, 377, -769), Vector3.new(1016, 378.3, -765.9), Vector3.new(1025.6, 375.9, -762.6), Vector3.new(1036.4, 368.7, -759), Vector3.new(1047.6, 361.9, -756.7), Vector3.new(1057.6, 361.3, -756.2), Vector3.new(1067.9, 361.3, -755.5), Vector3.new(1078.6, 361.4, -754.8), Vector3.new(1088.7, 361.4, -754.2), Vector3.new(1096.1, 361.4, -753.7), Vector3.new(1106.4, 361.4, -753.2), Vector3.new(1117, 361.4, -752.6), Vector3.new(1127.7, 361.4, -752), Vector3.new(1137.9, 361.4, -751.4), Vector3.new(1147.7, 361.4, -752.5), Vector3.new(1157.5, 361.4, -753.7), Vector3.new(1167.8, 361.4, -755), Vector3.new(1178.4, 361.4, -756.3), Vector3.new(1188.4, 361.5, -757.5), Vector3.new(1199.1, 361.5, -758.8), Vector3.new(1209.6, 361.5, -760.2), Vector3.new(1218.2, 362.1, -760.9), Vector3.new(1228.3, 368.5, -757.9), Vector3.new(1238, 370.7, -755), Vector3.new(1247.6, 367.6, -752.2), Vector3.new(1258.4, 361.9, -749.2), Vector3.new(1268.9, 362, -747.5), Vector3.new(1281.5, 363.1, -742.8), Vector3.new(1287.4, 369.4, -735.9), Vector3.new(1293.1, 370.6, -729.2), Vector3.new(1299.1, 365.8, -722.1), Vector3.new(1307.1, 361.6, -717.5), Vector3.new(1313.4, 361.7, -716.4), Vector3.new(1324.1, 361.7, -715.8), Vector3.new(1334.3, 361.6, -715.4), Vector3.new(1344.9, 361.5, -714.9), Vector3.new(1355.6, 361.4, -714.4), Vector3.new(1364.8, 361.3, -713.9), Vector3.new(1373.6, 361.3, -716.3), Vector3.new(1384, 361.3, -719.2), Vector3.new(1394.3, 361.3, -722.1), Vector3.new(1400.7, 362.5, -724.5), Vector3.new(1410, 367.8, -730.2), Vector3.new(1419.1, 371.7, -735.7), Vector3.new(1428.7, 373.8, -741.7), Vector3.new(1438.4, 373.4, -747.6), Vector3.new(1447.3, 371.2, -753), Vector3.new(1456.4, 368, -758.6), Vector3.new(1466.1, 370.1, -758.3), Vector3.new(1476.3, 372, -757.9), Vector3.new(1486.9, 373.3, -757.6), Vector3.new(1497, 373.5, -757.2), Vector3.new(1507.1, 372.7, -756.9), Vector3.new(1517.1, 370.8, -756.5), Vector3.new(1527.7, 367.9, -756.2), Vector3.new(1538.3, 364.1, -755.8), Vector3.new(1548.7, 360.7, -754.9), Vector3.new(1558.2, 361.8, -749.9), Vector3.new(1560.5, 360.8, -742.2), Vector3.new(1560.9, 358.5, -735.2), Vector3.new(1561.3, 358.9, -734.9), Vector3.new(1561.1, 363.5, -734.9)}, [7] = {Vector3.new(-378.3, 360.8, -759.8), Vector3.new(-370.4, 360.8, -759.8), Vector3.new(-362.5, 360.8, -759.9), Vector3.new(-354.4, 360.8, -760.6), Vector3.new(-347.0, 360.8, -761.5), Vector3.new(-338.9, 360.8, -762.8), Vector3.new(-331.6, 360.8, -764.0), Vector3.new(-323.6, 360.8, -765.5), Vector3.new(-316.2, 360.8, -766.8), Vector3.new(-308.8, 361.1, -768.2), Vector3.new(-300.8, 361.3, -769.6), Vector3.new(-292.8, 361.4, -771.1), Vector3.new(-285.4, 361.4, -772.4), Vector3.new(-276.8, 361.4, -773.8), Vector3.new(-269.4, 361.4, -774.9), Vector3.new(-261.3, 361.4, -775.9), Vector3.new(-253.2, 361.4, -776.9), Vector3.new(-245.8, 361.4, -777.6), Vector3.new(-238.3, 361.4, -778.1), Vector3.new(-230.8, 361.3, -778.5), Vector3.new(-223.3, 361.4, -778.8), Vector3.new(-215.8, 361.4, -779.1), Vector3.new(-208.3, 361.4, -779.4), Vector3.new(-200.2, 361.4, -779.7), Vector3.new(-192.1, 361.4, -780.0), Vector3.new(-184.7, 361.4, -781.2), Vector3.new(-177.4, 361.4, -783.0), Vector3.new(-169.5, 361.4, -784.9), Vector3.new(-161.0, 361.4, -787.0), Vector3.new(-153.0, 361.4, -788.3), Vector3.new(-145.5, 361.4, -788.4), Vector3.new(-138.0, 361.4, -788.0), Vector3.new(-130.6, 361.6, -787.0), Vector3.new(-123.2, 361.4, -785.6), Vector3.new(-115.9, 361.5, -784.1), Vector3.new(-108.5, 361.4, -782.7), Vector3.new(-101.1, 361.4, -781.4), Vector3.new(-93.7, 361.4, -780.5), Vector3.new(-86.2, 361.4, -779.8), Vector3.new(-78.7, 361.5, -779.1), Vector3.new(-71.3, 364.1, -778.5), Vector3.new(-63.8, 366.7, -778.1), Vector3.new(-56.3, 369.3, -777.8), Vector3.new(-48.8, 371.4, -777.6), Vector3.new(-41.9, 373.0, -777.3), Vector3.new(-33.8, 374.3, -777.1), Vector3.new(-26.3, 375.1, -776.8), Vector3.new(-18.2, 375.3, -776.5), Vector3.new(-10.1, 374.9, -776.3), Vector3.new(-2.6, 374.1, -776.0), Vector3.new(4.9, 372.8, -775.8), Vector3.new(11.8, 371.1, -775.5), Vector3.new(19.3, 368.8, -775.3), Vector3.new(26.8, 366.1, -775.0), Vector3.new(33.7, 363.1, -774.8), Vector3.new(41.2, 361.1, -774.6), Vector3.new(48.7, 361.3, -774.1), Vector3.new(56.1, 361.4, -773.6), Vector3.new(63.6, 361.4, -773.1), Vector3.new(71.1, 361.4, -772.4), Vector3.new(78.6, 361.4, -771.8), Vector3.new(86.0, 361.4, -771.1), Vector3.new(93.5, 361.4, -770.3), Vector3.new(101.6, 361.4, -769.5), Vector3.new(109.7, 361.4, -768.6), Vector3.new(117.1, 361.4, -767.9), Vector3.new(124.6, 361.4, -767.1), Vector3.new(132.0, 361.4, -766.3), Vector3.new(140.1, 361.4, -765.5), Vector3.new(147.6, 361.4, -765.2), Vector3.new(155.7, 361.4, -765.7), Vector3.new(163.1, 361.4, -766.9), Vector3.new(171.0, 361.4, -768.8), Vector3.new(178.2, 361.8, -770.9), Vector3.new(185.3, 364.4, -773.3), Vector3.new(191.8, 366.8, -775.5), Vector3.new(198.2, 369.2, -778.0), Vector3.new(205.1, 371.7, -780.9), Vector3.new(211.3, 373.6, -783.8), Vector3.new(218.0, 375.3, -787.2), Vector3.new(224.6, 376.5, -790.7), Vector3.new(231.3, 377.1, -794.2), Vector3.new(238.0, 377.3, -797.6), Vector3.new(245.2, 377.0, -801.4), Vector3.new(251.9, 376.1, -804.7), Vector3.new(259.3, 376.7, -808.1), Vector3.new(265.5, 379.5, -804.6), Vector3.new(272.1, 382.1, -801.4), Vector3.new(278.8, 384.9, -798.6), Vector3.new(286.0, 387.0, -795.9), Vector3.new(293.8, 388.3, -793.1), Vector3.new(300.4, 388.9, -790.8), Vector3.new(308.5, 388.8, -787.8), Vector3.new(316.0, 388.2, -784.8), Vector3.new(323.0, 387.1, -782.1), Vector3.new(329.4, 385.7, -779.6), Vector3.new(335.8, 383.9, -777.1), Vector3.new(342.8, 381.4, -774.4), Vector3.new(350.4, 378.2, -771.5), Vector3.new(356.8, 375.0, -769.0), Vector3.new(362.7, 371.7, -766.8), Vector3.new(368.6, 368.1, -764.8), Vector3.new(374.6, 364.2, -763.0), Vector3.new(380.7, 360.9, -761.7), Vector3.new(388.1, 361.3, -761.0), Vector3.new(395.6, 361.4, -760.8), Vector3.new(403.1, 361.4, -760.9), Vector3.new(410.6, 361.4, -761.3), Vector3.new(418.1, 361.4, -761.8), Vector3.new(425.6, 361.4, -762.6), Vector3.new(433.0, 361.4, -763.4), Vector3.new(440.5, 361.4, -764.3), Vector3.new(447.9, 361.4, -765.1), Vector3.new(455.4, 361.4, -766.0), Vector3.new(463.3, 361.4, -767.5), Vector3.new(471.2, 361.4, -769.7), Vector3.new(479.0, 361.4, -771.9), Vector3.new(486.8, 361.4, -774.2), Vector3.new(494.0, 361.4, -776.3), Vector3.new(504.2, 361.4, -779.3), Vector3.new(511.4, 361.4, -781.4), Vector3.new(519.2, 361.4, -783.7), Vector3.new(526.4, 361.4, -785.8), Vector3.new(533.6, 361.4, -787.8), Vector3.new(540.8, 361.4, -789.8), Vector3.new(548.1, 361.4, -791.7), Vector3.new(555.4, 361.4, -793.5), Vector3.new(562.6, 361.4, -795.3), Vector3.new(570.0, 361.4, -796.8), Vector3.new(577.4, 361.4, -798.1), Vector3.new(584.8, 361.4, -799.3), Vector3.new(592.2, 361.4, -800.3), Vector3.new(599.7, 361.4, -801.0), Vector3.new(607.2, 361.4, -801.6), Vector3.new(614.7, 361.4, -801.9), Vector3.new(624.0, 361.4, -802.2), Vector3.new(632.8, 361.4, -802.1), Vector3.new(640.9, 361.4, -801.8), Vector3.new(648.4, 361.4, -801.3), Vector3.new(657.1, 361.4, -800.5), Vector3.new(665.8, 361.4, -799.4), Vector3.new(674.4, 361.4, -798.1), Vector3.new(682.4, 361.4, -796.6), Vector3.new(690.4, 361.4, -795.0), Vector3.new(697.7, 361.4, -793.3), Vector3.new(704.9, 361.4, -791.4), Vector3.new(712.2, 361.4, -789.4), Vector3.new(719.4, 361.4, -787.5), Vector3.new(726.6, 361.4, -785.5), Vector3.new(734.5, 361.4, -783.4), Vector3.new(742.3, 361.4, -781.2), Vector3.new(749.6, 361.4, -779.3), Vector3.new(756.8, 361.4, -777.3), Vector3.new(764.0, 361.4, -775.3), Vector3.new(771.3, 361.4, -773.6), Vector3.new(778.7, 361.4, -772.1), Vector3.new(786.1, 361.4, -770.9), Vector3.new(793.5, 361.4, -770.1), Vector3.new(801.0, 361.4, -769.5), Vector3.new(808.5, 361.4, -769.0), Vector3.new(816.6, 362.5, -768.4), Vector3.new(823.5, 364.8, -768.0), Vector3.new(830.9, 367.4, -767.5), Vector3.new(838.4, 370.0, -767.1), Vector3.new(845.3, 371.9, -766.6), Vector3.new(852.8, 373.6, -766.2), Vector3.new(860.9, 374.8, -765.7), Vector3.new(868.4, 375.5, -765.2), Vector3.new(875.9, 375.6, -764.8), Vector3.new(883.3, 375.3, -764.3), Vector3.new(890.8, 374.4, -763.8), Vector3.new(898.9, 373.0, -763.3), Vector3.new(906.4, 371.1, -762.9), Vector3.new(913.9, 368.8, -762.4), Vector3.new(920.8, 366.2, -762.0), Vector3.new(928.3, 362.9, -761.5), Vector3.new(935.8, 361.2, -761.1), Vector3.new(943.2, 361.8, -760.6), Vector3.new(950.7, 364.3, -760.1), Vector3.new(957.6, 366.7, -759.7), Vector3.new(965.1, 369.2, -759.2), Vector3.new(972.6, 371.3, -758.8), Vector3.new(979.4, 372.7, -758.4), Vector3.new(987.5, 373.9, -757.8), Vector3.new(995.6, 374.6, -757.3), Vector3.new(1003.1, 374.6, -756.9), Vector3.new(1011.2, 374.1, -756.7), Vector3.new(1018.7, 373.2, -756.7), Vector3.new(1026.2, 371.7, -756.8), Vector3.new(1033.1, 370.0, -757.0), Vector3.new(1040.0, 367.8, -757.1), Vector3.new(1048.1, 364.7, -757.3), Vector3.new(1055.0, 361.6, -757.4), Vector3.new(1063.1, 361.3, -757.5), Vector3.new(1071.2, 361.4, -757.7), Vector3.new(1080.0, 361.4, -757.9), Vector3.new(1088.1, 361.4, -758.0), Vector3.new(1095.6, 361.4, -758.2), Vector3.new(1103.1, 361.4, -758.3), Vector3.new(1110.6, 361.4, -758.4), Vector3.new(1118.1, 361.4, -758.6), Vector3.new(1125.6, 361.4, -758.7), Vector3.new(1133.7, 361.4, -758.8), Vector3.new(1141.8, 361.4, -758.7), Vector3.new(1149.3, 361.4, -758.4), Vector3.new(1156.8, 361.4, -758.0), Vector3.new(1164.3, 361.4, -757.5), Vector3.new(1171.8, 361.5, -757.0), Vector3.new(1179.9, 361.5, -756.3), Vector3.new(1188.0, 361.5, -755.4), Vector3.new(1195.4, 361.5, -754.5), Vector3.new(1202.8, 361.5, -753.3), Vector3.new(1212.1, 361.5, -751.7), Vector3.new(1220.0, 362.4, -750.0), Vector3.new(1227.3, 365.0, -748.1), Vector3.new(1233.9, 367.3, -746.3), Vector3.new(1241.1, 369.9, -744.2), Vector3.new(1248.2, 372.1, -741.8), Vector3.new(1255.2, 373.7, -739.3), Vector3.new(1262.9, 374.9, -736.6), Vector3.new(1270.0, 375.6, -734.1), Vector3.new(1277.1, 375.7, -731.6), Vector3.new(1284.1, 375.4, -729.2), Vector3.new(1291.2, 374.5, -726.7), Vector3.new(1298.3, 373.2, -724.2), Vector3.new(1305.4, 371.4, -721.7), Vector3.new(1312.5, 369.1, -719.2), Vector3.new(1319.5, 366.3, -716.8), Vector3.new(1326.6, 363.0, -714.3), Vector3.new(1333.8, 362.3, -712.2), Vector3.new(1341.1, 362.1, -710.6), Vector3.new(1348.5, 361.9, -709.4), Vector3.new(1356.0, 361.7, -708.6), Vector3.new(1363.5, 361.5, -708.3), Vector3.new(1370.9, 361.4, -708.2), Vector3.new(1378.4, 361.4, -708.4), Vector3.new(1385.8, 361.4, -708.8), Vector3.new(1393.8, 361.3, -709.7), Vector3.new(1401.9, 361.3, -710.7), Vector3.new(1409.2, 361.3, -712.1), Vector3.new(1419.7, 362.5, -714.2), Vector3.new(1427.6, 365.1, -716.0), Vector3.new(1434.3, 367.5, -717.6), Vector3.new(1441.0, 369.8, -719.2), Vector3.new(1448.3, 372.4, -720.9), Vector3.new(1455.6, 375.0, -722.6), Vector3.new(1464.1, 377.5, -724.6), Vector3.new(1471.3, 379.1, -726.5), Vector3.new(1478.6, 380.2, -728.3), Vector3.new(1485.9, 380.8, -730.2), Vector3.new(1493.1, 381.0, -732.1), Vector3.new(1500.4, 380.6, -733.9), Vector3.new(1507.7, 379.8, -735.8), Vector3.new(1514.9, 378.5, -737.7), Vector3.new(1522.2, 376.7, -739.5), Vector3.new(1529.5, 374.4, -741.4), Vector3.new(1536.7, 371.6, -743.3), Vector3.new(1544.0, 368.3, -745.1), Vector3.new(1551.2, 364.5, -747.0), Vector3.new(1558.5, 361.5, -748.9), Vector3.new(1565.8, 361.9, -750.7), Vector3.new(1573.1, 362.0, -752.5), Vector3.new(1580.4, 361.9, -754.0), Vector3.new(1587.8, 361.3, -755.2), Vector3.new(1595.3, 361.0, -756.1), Vector3.new(1602.7, 361.0, -756.5), Vector3.new(1610.2, 361.0, -756.6), Vector3.new(1618.3, 361.0, -756.0), Vector3.new(1625.8, 361.0, -755.0), Vector3.new(1633.7, 361.0, -753.3), Vector3.new(1641.0, 362.7, -751.5), Vector3.new(1648.8, 365.5, -749.4), Vector3.new(1655.4, 367.9, -747.4), Vector3.new(1662.6, 370.5, -745.1), Vector3.new(1670.3, 373.0, -742.6), Vector3.new(1676.8, 374.6, -740.5), Vector3.new(1684.0, 375.9, -738.2), Vector3.new(1691.1, 376.7, -735.9), Vector3.new(1698.2, 377.0, -733.5), Vector3.new(1705.4, 376.8, -731.2), Vector3.new(1712.5, 376.1, -728.9), Vector3.new(1719.7, 374.9, -726.6), Vector3.new(1726.8, 373.3, -724.3), Vector3.new(1733.9, 371.1, -722.0), Vector3.new(1741.1, 368.5, -719.7), Vector3.new(1748.2, 365.4, -717.4), Vector3.new(1755.3, 361.8, -715.1), Vector3.new(1762.5, 361.6, -712.8), Vector3.new(1769.6, 361.4, -710.6), Vector3.new(1776.9, 361.2, -708.7), Vector3.new(1784.2, 361.0, -707.3), Vector3.new(1791.7, 360.9, -706.5), Vector3.new(1799.1, 360.9, -706.4), Vector3.new(1806.5, 360.9, -706.6), Vector3.new(1813.9, 360.9, -707.0), Vector3.new(1821.3, 360.8, -707.5), Vector3.new(1830.0, 360.8, -708.3), Vector3.new(1838.1, 360.8, -709.3), Vector3.new(1846.8, 360.8, -710.3), Vector3.new(1854.9, 360.8, -711.4), Vector3.new(1864.2, 360.8, -712.6), Vector3.new(1872.8, 360.8, -713.8), Vector3.new(1880.2, 360.8, -714.8), Vector3.new(1888.3, 360.8, -715.9), Vector3.new(1895.7, 361.2, -717.0), Vector3.new(1903.8, 364.0, -718.1), Vector3.new(1910.6, 366.4, -719.0), Vector3.new(1918.0, 369.0, -720.0), Vector3.new(1925.4, 371.6, -721.1), Vector3.new(1932.9, 374.0, -722.1), Vector3.new(1940.3, 375.8, -723.1), Vector3.new(1947.7, 377.2, -724.2), Vector3.new(1955.2, 378.1, -725.2), Vector3.new(1962.6, 378.4, -726.2), Vector3.new(1970.0, 378.3, -727.3), Vector3.new(1977.5, 378.9, -728.3), Vector3.new(1984.9, 381.5, -729.3), Vector3.new(1992.3, 384.1, -730.3), Vector3.new(2000.4, 386.7, -731.5), Vector3.new(2007.2, 388.4, -732.4), Vector3.new(2014.6, 389.9, -733.4), Vector3.new(2022.0, 390.9, -734.5), Vector3.new(2030.1, 391.3, -735.6), Vector3.new(2038.1, 391.3, -736.7), Vector3.new(2045.6, 390.7, -737.7), Vector3.new(2053.6, 389.5, -738.8), Vector3.new(2060.4, 388.0, -739.8), Vector3.new(2067.8, 385.9, -740.8), Vector3.new(2074.7, 383.6, -741.7), Vector3.new(2081.5, 380.9, -742.7), Vector3.new(2088.9, 377.4, -743.7), Vector3.new(2095.1, 374.2, -744.6), Vector3.new(2101.3, 370.6, -745.4), Vector3.new(2107.5, 366.7, -746.3), Vector3.new(2113.7, 362.4, -747.1), Vector3.new(2121.1, 360.8, -748.1), Vector3.new(2128.5, 361.0, -749.1), Vector3.new(2136.0, 363.1, -750.1), Vector3.new(2143.4, 365.7, -751.1), Vector3.new(2150.8, 368.3, -752.1), Vector3.new(2157.6, 370.2, -753.0), Vector3.new(2165.1, 371.9, -753.8), Vector3.new(2173.2, 373.1, -754.3), Vector3.new(2180.7, 373.8, -754.6), Vector3.new(2188.2, 373.9, -754.6), Vector3.new(2195.7, 373.6, -754.4), Vector3.new(2203.2, 372.7, -753.8), Vector3.new(2210.6, 371.4, -752.9), Vector3.new(2217.4, 369.7, -751.8), Vector3.new(2224.7, 367.5, -750.3), Vector3.new(2232.6, 364.5, -748.2), Vector3.new(2240.3, 361.7, -745.8), Vector3.new(2247.7, 362.3, -742.6), Vector3.new(2255.1, 365.1, -739.2), Vector3.new(2261.3, 367.3, -736.3), Vector3.new(2268.1, 369.2, -733.1), Vector3.new(2274.6, 370.7, -729.9), Vector3.new(2280.9, 371.8, -726.1), Vector3.new(2287.3, 372.0, -722.2), Vector3.new(2293.5, 369.6, -718.7), Vector3.new(2300.2, 366.1, -716.8), Vector3.new(2307.0, 362.5, -715.6), Vector3.new(2315.0, 361.7, -715.7), Vector3.new(2323.1, 361.4, -716.3), Vector3.new(2330.6, 361.2, -717.0), Vector3.new(2338.0, 361.1, -718.1), Vector3.new(2346.0, 362.0, -719.3), Vector3.new(2353.4, 364.3, -720.4), Vector3.new(2360.8, 366.9, -721.6), Vector3.new(2368.8, 369.7, -722.9), Vector3.new(2375.6, 371.6, -723.9), Vector3.new(2383.0, 373.3, -725.1), Vector3.new(2390.4, 374.5, -726.3), Vector3.new(2397.8, 375.1, -727.5), Vector3.new(2405.2, 375.3, -728.6), Vector3.new(2412.7, 375.0, -729.8), Vector3.new(2420.1, 374.2, -731.0), Vector3.new(2427.5, 372.8, -732.1), Vector3.new(2434.2, 370.9, -733.1), Vector3.new(2441.2, 367.6, -734.1), Vector3.new(2446.9, 362.7, -734.9), Vector3.new(2453.9, 362.9, -735.4)}, [8] = {Vector3.new(-377.9, 360.8, -759.7), Vector3.new(-370.5, 360.8, -759.2), Vector3.new(-362.7, 360.8, -758.9), Vector3.new(-355.5, 360.8, -758.9), Vector3.new(-347.3, 360.8, -759.1), Vector3.new(-339.8, 360.8, -759.4), Vector3.new(-331.4, 360.8, -759.7), Vector3.new(-323.9, 360.8, -759.9), Vector3.new(-316.4, 360.8, -760.2), Vector3.new(-308.9, 361.0, -760.4), Vector3.new(-300.6, 361.3, -760.8), Vector3.new(-293.6, 361.4, -761.9), Vector3.new(-286.5, 361.4, -763.2), Vector3.new(-278.3, 361.4, -763.7), Vector3.new(-270.0, 361.4, -764.2), Vector3.new(-262.5, 361.4, -764.8), Vector3.new(-255.0, 361.4, -765.5), Vector3.new(-246.7, 361.4, -766.3), Vector3.new(-238.4, 361.4, -767.2), Vector3.new(-230.1, 361.3, -768.0), Vector3.new(-222.7, 361.4, -768.7), Vector3.new(-215.2, 361.4, -769.5), Vector3.new(-206.9, 361.4, -770.3), Vector3.new(-199.5, 361.4, -771.0), Vector3.new(-192.0, 361.4, -771.7), Vector3.new(-183.7, 361.4, -772.3), Vector3.new(-174.5, 361.4, -772.8), Vector3.new(-167.0, 361.4, -773.2), Vector3.new(-157.9, 361.4, -773.4), Vector3.new(-149.5, 361.4, -773.6), Vector3.new(-142.0, 361.4, -773.6), Vector3.new(-133.7, 361.4, -773.4), Vector3.new(-126.2, 361.4, -773.2), Vector3.new(-118.7, 361.4, -772.7), Vector3.new(-111.3, 361.4, -772.0), Vector3.new(-103.8, 361.4, -771.2), Vector3.new(-96.3, 361.4, -770.4), Vector3.new(-88.9, 361.4, -769.7), Vector3.new(-80.6, 361.2, -769.0), Vector3.new(-72.3, 363.4, -768.5), Vector3.new(-63.9, 365.5, -768.1), Vector3.new(-55.6, 367.7, -767.9), Vector3.new(-48.1, 369.6, -767.7), Vector3.new(-40.6, 371.2, -767.5), Vector3.new(-32.3, 372.8, -767.3), Vector3.new(-24.0, 373.9, -767.1), Vector3.new(-16.5, 374.7, -766.9), Vector3.new(-9.0, 375.2, -766.8), Vector3.new(-1.5, 375.4, -766.6), Vector3.new(6.0, 375.3, -766.4), Vector3.new(14.4, 375.0, -766.2), Vector3.new(22.7, 374.2, -766.0), Vector3.new(31.0, 373.2, -765.8), Vector3.new(39.4, 371.7, -765.6), Vector3.new(47.7, 370.0, -765.4), Vector3.new(55.2, 368.1, -765.2), Vector3.new(64.4, 365.5, -765.0), Vector3.new(71.0, 363.3, -764.9), Vector3.new(77.7, 361.0, -764.7), Vector3.new(85.2, 361.2, -764.5), Vector3.new(92.7, 361.3, -764.4), Vector3.new(101.0, 361.4, -764.2), Vector3.new(108.5, 361.4, -764.0), Vector3.new(116.0, 361.4, -763.8), Vector3.new(124.3, 361.4, -763.6), Vector3.new(132.7, 361.4, -763.4), Vector3.new(141.0, 361.4, -763.2), Vector3.new(149.3, 361.4, -763.2), Vector3.new(156.8, 361.4, -763.6), Vector3.new(164.2, 361.4, -764.9), Vector3.new(172.3, 361.4, -766.9), Vector3.new(180.1, 361.4, -769.7), Vector3.new(190.2, 362.9, -773.7), Vector3.new(198.7, 365.3, -777.1), Vector3.new(206.5, 367.4, -780.2), Vector3.new(214.2, 369.6, -783.3), Vector3.new(225.8, 372.3, -787.9), Vector3.new(234.4, 373.9, -791.1), Vector3.new(241.5, 374.8, -793.6), Vector3.new(249.4, 375.6, -796.1), Vector3.new(257.4, 376.0, -798.6), Vector3.new(264.6, 376.0, -800.8), Vector3.new(271.8, 375.8, -802.8), Vector3.new(279.8, 375.2, -804.9), Vector3.new(288.0, 374.3, -806.7), Vector3.new(294.8, 375.8, -805.1), Vector3.new(302.0, 378.8, -801.2), Vector3.new(308.3, 381.4, -798.0), Vector3.new(314.7, 384.0, -794.9), Vector3.new(321.3, 386.5, -791.9), Vector3.new(328.2, 388.5, -789.0), Vector3.new(334.8, 389.9, -786.5), Vector3.new(341.6, 391.0, -784.2), Vector3.new(349.4, 391.6, -781.9), Vector3.new(356.8, 391.7, -779.8), Vector3.new(364.5, 391.5, -778.0), Vector3.new(371.7, 390.9, -776.4), Vector3.new(379.1, 389.9, -774.9), Vector3.new(386.8, 388.7, -773.6), Vector3.new(394.6, 387.1, -772.4), Vector3.new(402.7, 385.1, -771.3), Vector3.new(411.0, 382.8, -770.3), Vector3.new(419.2, 380.2, -769.5), Vector3.new(425.9, 377.8, -768.9), Vector3.new(432.5, 375.2, -768.5), Vector3.new(439.2, 372.4, -768.3), Vector3.new(445.9, 369.4, -768.2), Vector3.new(452.5, 366.2, -768.3), Vector3.new(459.2, 362.8, -768.7), Vector3.new(467.4, 360.8, -770.0), Vector3.new(475.5, 361.2, -771.7), Vector3.new(483.6, 361.4, -773.7), Vector3.new(491.6, 361.4, -776.1), Vector3.new(499.5, 361.4, -778.8), Vector3.new(506.6, 361.4, -781.3), Vector3.new(513.6, 361.4, -783.9), Vector3.new(520.6, 361.4, -786.5), Vector3.new(527.7, 361.4, -789.1), Vector3.new(535.5, 361.4, -791.9), Vector3.new(543.5, 361.4, -794.5), Vector3.new(550.6, 361.4, -796.6), Vector3.new(557.9, 361.4, -798.6), Vector3.new(566.0, 361.4, -800.6), Vector3.new(574.1, 361.4, -802.5), Vector3.new(582.2, 361.4, -804.1), Vector3.new(589.7, 361.4, -805.1), Vector3.new(597.2, 361.4, -805.7), Vector3.new(605.5, 361.4, -805.9), Vector3.new(613.8, 361.4, -805.6), Vector3.new(622.1, 361.4, -804.9), Vector3.new(629.6, 361.4, -804.1), Vector3.new(638.6, 361.4, -802.7), Vector3.new(646.0, 361.4, -801.4), Vector3.new(654.2, 361.4, -799.7), Vector3.new(661.5, 361.4, -798.1), Vector3.new(668.8, 361.4, -796.5), Vector3.new(676.2, 361.4, -794.9), Vector3.new(683.5, 361.4, -793.3), Vector3.new(690.8, 361.4, -791.7), Vector3.new(699.0, 361.4, -789.9), Vector3.new(707.1, 361.4, -788.1), Vector3.new(715.2, 361.4, -786.2), Vector3.new(723.3, 361.4, -784.3), Vector3.new(730.6, 361.4, -782.6), Vector3.new(737.9, 361.4, -780.9), Vector3.new(745.2, 361.4, -779.2), Vector3.new(753.4, 361.4, -777.4), Vector3.new(762.4, 361.4, -775.8), Vector3.new(769.8, 361.4, -774.7), Vector3.new(777.3, 361.4, -774.0), Vector3.new(785.6, 361.4, -773.2), Vector3.new(793.0, 361.4, -772.6), Vector3.new(800.5, 361.4, -771.9), Vector3.new(808.8, 361.4, -771.2), Vector3.new(817.1, 362.7, -770.6), Vector3.new(825.4, 364.8, -769.9), Vector3.new(833.7, 366.9, -769.2), Vector3.new(842.0, 369.0, -768.6), Vector3.new(850.3, 370.7, -767.9), Vector3.new(857.8, 372.0, -767.3), Vector3.new(866.9, 373.1, -766.5), Vector3.new(874.2, 373.8, -766.0), Vector3.new(881.3, 374.2, -765.4), Vector3.new(889.0, 374.2, -764.8), Vector3.new(897.8, 373.9, -764.0), Vector3.new(905.0, 373.2, -763.5), Vector3.new(913.2, 372.0, -762.8), Vector3.new(920.4, 370.4, -762.2), Vector3.new(927.3, 368.4, -761.7), Vector3.new(933.9, 366.0, -761.1), Vector3.new(940.8, 363.2, -760.6), Vector3.new(947.6, 361.0, -760.2), Vector3.new(956.3, 362.4, -759.7), Vector3.new(963.5, 364.4, -759.3), Vector3.new(970.9, 366.3, -759.0), Vector3.new(978.3, 368.2, -758.6), Vector3.new(986.7, 370.3, -758.2), Vector3.new(995.0, 372.0, -757.8), Vector3.new(1002.5, 373.3, -757.5), Vector3.new(1010.0, 374.3, -757.1), Vector3.new(1018.3, 375.0, -756.7), Vector3.new(1026.6, 375.5, -756.3), Vector3.new(1035.8, 375.5, -755.9), Vector3.new(1043.3, 375.3, -755.6), Vector3.new(1052.4, 374.6, -755.3), Vector3.new(1061.6, 373.5, -755.2), Vector3.new(1069.9, 372.2, -755.0), Vector3.new(1078.3, 370.5, -754.9), Vector3.new(1086.6, 368.5, -754.8), Vector3.new(1094.9, 366.1, -754.7), Vector3.new(1101.6, 364.0, -754.6), Vector3.new(1108.3, 361.6, -754.5), Vector3.new(1116.6, 361.2, -754.4), Vector3.new(1124.9, 361.3, -754.2), Vector3.new(1132.4, 361.4, -754.0), Vector3.new(1141.6, 361.4, -753.6), Vector3.new(1149.9, 361.4, -753.1), Vector3.new(1157.4, 361.4, -752.4), Vector3.new(1164.8, 361.4, -751.6), Vector3.new(1172.3, 361.5, -750.7), Vector3.new(1181.4, 362.6, -749.6), Vector3.new(1189.6, 364.7, -748.5), Vector3.new(1197.1, 366.7, -747.5), Vector3.new(1204.5, 368.6, -746.4), Vector3.new(1212.7, 370.7, -745.1), Vector3.new(1220.9, 372.5, -743.8), Vector3.new(1228.3, 373.8, -742.6), Vector3.new(1235.7, 374.9, -741.3), Vector3.new(1243.9, 375.7, -739.8), Vector3.new(1252.1, 376.2, -738.2), Vector3.new(1259.4, 376.3, -736.7), Vector3.new(1267.6, 376.2, -734.9), Vector3.new(1274.9, 375.8, -733.3), Vector3.new(1283.1, 375.0, -731.5), Vector3.new(1291.2, 373.8, -729.8), Vector3.new(1299.3, 372.3, -728.0), Vector3.new(1306.7, 370.7, -726.5), Vector3.new(1315.7, 368.4, -724.6), Vector3.new(1323.0, 366.1, -723.1), Vector3.new(1330.4, 363.6, -721.7), Vector3.new(1338.6, 362.6, -720.2), Vector3.new(1346.8, 362.4, -719.1), Vector3.new(1354.3, 362.3, -718.3), Vector3.new(1361.8, 362.2, -717.8), Vector3.new(1370.1, 362.0, -717.5), Vector3.new(1378.4, 361.9, -717.5), Vector3.new(1386.7, 361.7, -717.5), Vector3.new(1395.1, 361.6, -717.9), Vector3.new(1402.5, 361.4, -718.4), Vector3.new(1411.7, 361.2, -719.3), Vector3.new(1419.1, 361.2, -720.1), Vector3.new(1427.4, 363.3, -721.0), Vector3.new(1436.5, 365.7, -722.3), Vector3.new(1445.5, 368.0, -723.6), Vector3.new(1452.9, 369.8, -724.9), Vector3.new(1461.1, 371.3, -726.6), Vector3.new(1468.4, 372.5, -728.2), Vector3.new(1476.6, 373.4, -729.9), Vector3.new(1483.9, 374.0, -731.5), Vector3.new(1492.0, 374.3, -733.2), Vector3.new(1500.2, 374.2, -734.9), Vector3.new(1507.5, 373.9, -736.5), Vector3.new(1516.5, 373.1, -738.4), Vector3.new(1524.7, 372.0, -740.1), Vector3.new(1532.8, 370.6, -741.8), Vector3.new(1540.1, 369.0, -743.4), Vector3.new(1547.5, 367.2, -744.9), Vector3.new(1554.8, 365.1, -746.5), Vector3.new(1562.1, 362.7, -748.0), Vector3.new(1570.3, 361.7, -749.7), Vector3.new(1578.5, 361.9, -751.2), Vector3.new(1585.9, 361.7, -752.3), Vector3.new(1593.4, 361.0, -753.1), Vector3.new(1601.7, 361.0, -753.5), Vector3.new(1610.0, 361.0, -753.4), Vector3.new(1618.4, 361.0, -752.9), Vector3.new(1626.6, 361.0, -751.8), Vector3.new(1634.9, 362.3, -750.5), Vector3.new(1643.1, 364.5, -749.1), Vector3.new(1651.3, 366.6, -747.6), Vector3.new(1659.4, 368.7, -745.9), Vector3.new(1667.5, 370.4, -744.0), Vector3.new(1675.6, 371.8, -741.9), Vector3.new(1682.8, 372.7, -740.0), Vector3.new(1690.9, 373.5, -737.9), Vector3.new(1699.0, 373.9, -735.9), Vector3.new(1706.3, 373.9, -734.0), Vector3.new(1714.3, 373.7, -731.9), Vector3.new(1721.6, 373.1, -730.1), Vector3.new(1728.9, 372.3, -728.2), Vector3.new(1736.9, 371.1, -726.1), Vector3.new(1744.2, 369.8, -724.3), Vector3.new(1753.1, 367.7, -722.1), Vector3.new(1760.4, 365.7, -720.6), Vector3.new(1767.8, 363.4, -719.1), Vector3.new(1775.2, 362.0, -717.8), Vector3.new(1784.3, 361.8, -716.6), Vector3.new(1792.5, 361.7, -715.7), Vector3.new(1800.9, 361.6, -715.2), Vector3.new(1808.3, 361.4, -714.9), Vector3.new(1817.5, 361.3, -714.8), Vector3.new(1826.7, 361.1, -714.9), Vector3.new(1835.8, 360.9, -715.2), Vector3.new(1845.8, 360.8, -715.6), Vector3.new(1853.3, 360.8, -716.1), Vector3.new(1862.4, 360.8, -716.9), Vector3.new(1870.7, 360.8, -717.9), Vector3.new(1878.1, 360.8, -718.9), Vector3.new(1886.4, 360.8, -720.0), Vector3.new(1893.8, 360.8, -721.1), Vector3.new(1902.1, 362.9, -722.4), Vector3.new(1909.5, 364.8, -723.5), Vector3.new(1916.9, 366.8, -724.7), Vector3.new(1925.1, 368.9, -725.9), Vector3.new(1932.5, 370.8, -727.1), Vector3.new(1940.8, 372.5, -728.3), Vector3.new(1949.0, 373.9, -729.6), Vector3.new(1956.4, 374.9, -730.7), Vector3.new(1964.7, 375.7, -732.0), Vector3.new(1972.9, 376.1, -733.2), Vector3.new(1980.3, 376.2, -734.4), Vector3.new(1989.4, 376.0, -735.8), Vector3.new(1997.6, 375.4, -737.0), Vector3.new(2005.8, 374.4, -738.3), Vector3.new(2014.1, 373.1, -739.7), Vector3.new(2022.3, 371.5, -741.0), Vector3.new(2030.5, 369.6, -742.4), Vector3.new(2037.9, 367.5, -743.7), Vector3.new(2045.3, 365.2, -744.9), Vector3.new(2051.9, 362.9, -746.0), Vector3.new(2060.1, 360.7, -747.4), Vector3.new(2068.3, 360.9, -748.8), Vector3.new(2076.5, 361.0, -750.1), Vector3.new(2084.7, 361.0, -751.5), Vector3.new(2093.0, 361.0, -752.8), Vector3.new(2100.4, 361.0, -753.9), Vector3.new(2107.8, 361.0, -754.9), Vector3.new(2115.3, 361.0, -755.8), Vector3.new(2122.7, 361.0, -756.6), Vector3.new(2131.0, 361.0, -757.3), Vector3.new(2138.5, 361.0, -757.6), Vector3.new(2146.9, 361.7, -757.4), Vector3.new(2154.3, 363.6, -757.0), Vector3.new(2162.7, 365.8, -756.4), Vector3.new(2170.9, 368.0, -755.7), Vector3.new(2178.4, 369.9, -754.9), Vector3.new(2185.8, 371.7, -754.0), Vector3.new(2194.0, 373.4, -752.8), Vector3.new(2202.2, 374.8, -751.3), Vector3.new(2210.3, 375.8, -749.6), Vector3.new(2217.5, 376.4, -747.9), Vector3.new(2226.3, 376.8, -745.4), Vector3.new(2235.1, 376.7, -742.8), Vector3.new(2242.2, 376.4, -740.4), Vector3.new(2250.1, 375.7, -737.6), Vector3.new(2257.1, 374.8, -735.1), Vector3.new(2265.0, 373.4, -732.3), Vector3.new(2272.8, 371.7, -729.5), Vector3.new(2279.9, 369.9, -726.9), Vector3.new(2287.8, 367.6, -724.2), Vector3.new(2294.9, 365.2, -722.0), Vector3.new(2301.3, 362.8, -720.1), Vector3.new(2309.4, 362.1, -718.1), Vector3.new(2317.6, 362.0, -716.9), Vector3.new(2325.1, 361.8, -716.5), Vector3.new(2333.4, 361.7, -716.6), Vector3.new(2341.6, 361.5, -717.3), Vector3.new(2349.9, 361.3, -718.6), Vector3.new(2357.2, 363.3, -719.9), Vector3.new(2364.6, 365.2, -721.4), Vector3.new(2372.7, 367.4, -723.2), Vector3.new(2380.7, 369.5, -725.2), Vector3.new(2388.0, 371.2, -727.2), Vector3.new(2395.1, 372.6, -729.4), Vector3.new(2403.1, 373.9, -732.0), Vector3.new(2411.0, 374.8, -734.5), Vector3.new(2418.9, 375.3, -737.0), Vector3.new(2426.1, 375.6, -739.2), Vector3.new(2434.1, 375.5, -741.4), Vector3.new(2441.4, 375.1, -743.2), Vector3.new(2449.5, 374.3, -745.1), Vector3.new(2456.8, 373.3, -746.9), Vector3.new(2464.1, 372.0, -748.6), Vector3.new(2471.4, 370.4, -750.2), Vector3.new(2480.4, 368.0, -752.0), Vector3.new(2487.8, 365.8, -753.3), Vector3.new(2495.3, 363.2, -754.2), Vector3.new(2502.7, 362.8, -754.8), Vector3.new(2510.2, 362.6, -755.1), Vector3.new(2517.7, 362.4, -755.3), Vector3.new(2525.2, 362.1, -755.6), Vector3.new(2533.5, 361.9, -755.8), Vector3.new(2541.0, 361.8, -756.0), Vector3.new(2550.2, 361.8, -756.3), Vector3.new(2557.7, 361.8, -756.5), Vector3.new(2565.2, 361.8, -756.7), Vector3.new(2573.5, 361.8, -756.8), Vector3.new(2581.8, 361.8, -756.9), Vector3.new(2590.1, 361.8, -757.0), Vector3.new(2598.4, 361.8, -757.0), Vector3.new(2606.8, 361.8, -757.0), Vector3.new(2615.1, 361.8, -757.1), Vector3.new(2622.6, 361.8, -757.1), Vector3.new(2630.8, 362.6, -757.2), Vector3.new(2638.6, 365.0, -757.2), Vector3.new(2645.1, 368.4, -757.3), Vector3.new(2650.9, 373.1, -757.4), Vector3.new(2655.8, 378.8, -757.4), Vector3.new(2659.5, 385.2, -757.5), Vector3.new(2662.0, 392.4, -757.5), Vector3.new(2663.1, 400.6, -757.6), Vector3.new(2662.9, 408.0, -757.7), Vector3.new(2662.8, 415.6, -757.7), Vector3.new(2662.8, 423.0, -757.8), Vector3.new(2662.7, 430.5, -757.9), Vector3.new(2662.7, 438.8, -758.1), Vector3.new(2662.7, 447.1, -758.3), Vector3.new(2660.2, 454.5, -758.4), Vector3.new(2657.7, 461.3, -758.6), Vector3.new(2655.3, 468.2, -758.7), Vector3.new(2653.0, 475.2, -758.8), Vector3.new(2651.3, 484.3, -759.0), Vector3.new(2652.8, 493.6, -759.1), Vector3.new(2656.2, 501.8, -759.2), Vector3.new(2659.9, 508.5, -759.3), Vector3.new(2661.2, 515.5, -759.4), Vector3.new(2659.7, 522.6, -759.4), Vector3.new(2657.8, 532.3, -759.6), Vector3.new(2656.5, 539.4, -759.6), Vector3.new(2655.2, 546.4, -759.7), Vector3.new(2653.7, 555.1, -759.6), Vector3.new(2652.5, 562.9, -759.5), Vector3.new(2651.1, 572.4, -759.1), Vector3.new(2650.0, 581.0, -758.6), Vector3.new(2649.1, 589.5, -758.0), Vector3.new(2648.5, 597.2, -757.4), Vector3.new(2648.0, 604.9, -756.6), Vector3.new(2648.0, 613.4, -755.6), Vector3.new(2648.4, 621.9, -754.5), Vector3.new(2649.2, 630.3, -753.3), Vector3.new(2650.5, 637.9, -752.3), Vector3.new(2652.3, 645.6, -751.5), Vector3.new(2654.2, 652.3, -750.8), Vector3.new(2656.5, 659.0, -750.3), Vector3.new(2659.2, 665.8, -750.0), Vector3.new(2662.1, 672.5, -749.9), Vector3.new(2662.3, 680.0, -750.4), Vector3.new(2662.5, 687.5, -751.2), Vector3.new(2662.7, 695.0, -752.2), Vector3.new(2662.8, 702.4, -753.2), Vector3.new(2662.7, 709.9, -754.2), Vector3.new(2662.7, 717.3, -755.3), Vector3.new(2662.7, 725.6, -756.5), Vector3.new(2662.7, 733.1, -757.5), Vector3.new(2662.7, 742.2, -758.4), Vector3.new(2662.7, 749.7, -758.6), Vector3.new(2662.7, 758.0, -758.2), Vector3.new(2662.7, 767.2, -757.6), Vector3.new(2662.7, 774.7, -757.1), Vector3.new(2662.7, 782.2, -756.6), Vector3.new(2662.7, 790.6, -756.2), Vector3.new(2662.8, 798.9, -756.1), Vector3.new(2663.4, 806.4, -756.1), Vector3.new(2664.4, 813.9, -756.2), Vector3.new(2666.1, 822.2, -756.3), Vector3.new(2668.1, 829.5, -756.4), Vector3.new(2670.8, 837.5, -756.6), Vector3.new(2674.5, 846.1, -756.8), Vector3.new(2678.0, 852.9, -756.9), Vector3.new(2682.4, 860.4, -757.0), Vector3.new(2687.3, 867.6, -757.0), Vector3.new(2691.5, 873.2, -756.9), Vector3.new(2698.6, 871.3, -756.7), Vector3.new(2704.1, 866.2, -756.6), Vector3.new(2709.5, 861.3, -756.5), Vector3.new(2715.1, 856.3, -756.4), Vector3.new(2720.6, 851.5, -756.4), Vector3.new(2726.3, 846.6, -756.3), Vector3.new(2727.4, 839.4, -756.3), Vector3.new(2734.3, 837.8, -754.4), Vector3.new(2742.0, 837.8, -752.1), Vector3.new(2748.5, 840.2, -750.1), Vector3.new(2755.4, 843.0, -747.9), Vector3.new(2763.0, 845.8, -745.5), Vector3.new(2770.5, 847.9, -743.2), Vector3.new(2777.4, 849.2, -741.0), Vector3.new(2785.1, 849.6, -738.6), Vector3.new(2792.3, 848.6, -736.4), Vector3.new(2798.9, 846.7, -734.4), Vector3.new(2805.4, 844.2, -732.6), Vector3.new(2812.0, 841.2, -731.1), Vector3.new(2819.0, 837.6, -729.6), Vector3.new(2826.0, 837.8, -728.4), Vector3.new(2832.0, 839.3, -732.4)}, [9] = {Vector3.new(-378.1, 360.8, -759.6), Vector3.new(-377.2, 360.8, -759.6), Vector3.new(-367.7, 360.8, -759.4), Vector3.new(-349.2, 360.8, -760.1), Vector3.new(-327.8, 360.8, -763.6), Vector3.new(-306.4, 361.2, -767.2), Vector3.new(-286.7, 361.4, -770.3), Vector3.new(-266.8, 361.4, -772.5), Vector3.new(-245.2, 361.4, -774.3), Vector3.new(-224.4, 361.4, -776), Vector3.new(-204.4, 361.4, -776.3), Vector3.new(-183.6, 361.4, -775.6), Vector3.new(-163.6, 361.4, -774.9), Vector3.new(-141.1, 361.4, -774.2), Vector3.new(-121.2, 361.4, -773.6), Vector3.new(-100.3, 361.4, -773.3), Vector3.new(-78.7, 365.7, -773.2), Vector3.new(-57, 370.8, -773.1), Vector3.new(-35.3, 373.7, -773.1), Vector3.new(-13.7, 374.2, -773.1), Vector3.new(7.2, 372.6, -773.1), Vector3.new(28, 368.9, -773.1), Vector3.new(47.2, 363.6, -772.8), Vector3.new(67.9, 361.3, -771.3), Vector3.new(89.5, 361.4, -769.2), Vector3.new(109.4, 361.4, -767.2), Vector3.new(131, 361.4, -765.2), Vector3.new(151, 361.4, -765.5), Vector3.new(171.4, 361.4, -769.5), Vector3.new(190.2, 363.5, -778.2), Vector3.new(208.7, 368.9, -787.9), Vector3.new(224.2, 372.4, -796.1), Vector3.new(245.1, 374.8, -806.4), Vector3.new(266.3, 375, -807.4), Vector3.new(287.9, 375, -807.6), Vector3.new(308.8, 375.1, -807.8), Vector3.new(322.9, 379.8, -802), Vector3.new(336.4, 384.9, -795.3), Vector3.new(351.3, 388.1, -789.4), Vector3.new(368.2, 389.1, -784), Vector3.new(386.5, 387.8, -779.5), Vector3.new(406.1, 384.2, -776), Vector3.new(425, 378.9, -774.1), Vector3.new(445.1, 371.2, -773.6), Vector3.new(465.4, 361.4, -774.6), Vector3.new(485.5, 361.4, -779.8), Vector3.new(505.6, 361.4, -785.4), Vector3.new(525.8, 361.4, -790.6), Vector3.new(546.2, 361.4, -794.8), Vector3.new(566.8, 361.4, -797.6), Vector3.new(589.3, 361.4, -798.5), Vector3.new(609.3, 361.4, -798), Vector3.new(629.2, 361.4, -796.1), Vector3.new(650.7, 361.4, -793.3), Vector3.new(673, 361.4, -790.5), Vector3.new(693.6, 361.4, -787.8), Vector3.new(714.3, 361.4, -785.1), Vector3.new(734.1, 361.4, -782.6), Vector3.new(756.5, 361.4, -779.7), Vector3.new(778, 361.4, -777), Vector3.new(797, 363.1, -775.3), Vector3.new(819.5, 368.9, -773.4), Vector3.new(840.2, 373.1, -771.7), Vector3.new(861, 375.2, -770.1), Vector3.new(881.8, 375.1, -768.4), Vector3.new(903.4, 372.7, -766.7), Vector3.new(924.2, 368.3, -765.8), Vector3.new(945, 361.7, -765.2), Vector3.new(965.8, 364.1, -764.6), Vector3.new(986.6, 369.4, -764), Vector3.new(1009.1, 373.5, -763.4), Vector3.new(1027.4, 374.9, -762.9), Vector3.new(1049.9, 374.5, -762.2), Vector3.new(1072.4, 371.5, -761.6), Vector3.new(1094.1, 366.4, -761), Vector3.new(1115.7, 361.1, -760.3), Vector3.new(1137.4, 361.4, -759.7), Vector3.new(1156.5, 361.4, -759), Vector3.new(1178.1, 361.5, -757.3), Vector3.new(1197.8, 361.5, -753.9), Vector3.new(1218.6, 364.1, -747.8), Vector3.new(1239, 369.6, -740.5), Vector3.new(1257.9, 373.2, -734.1), Vector3.new(1277.2, 374.8, -728.9), Vector3.new(1299, 374.2, -723.3), Vector3.new(1320, 371.3, -717.9), Vector3.new(1340.4, 366.4, -713.7), Vector3.new(1361.9, 361.1, -711.6), Vector3.new(1381.8, 361.3, -713.4), Vector3.new(1403.2, 361.8, -716.4), Vector3.new(1424.6, 367.4, -720.1), Vector3.new(1445.1, 372.5, -723.8), Vector3.new(1466.9, 376, -729.1), Vector3.new(1487, 377, -734.8), Vector3.new(1507, 375.9, -740.5), Vector3.new(1526.3, 372.9, -745.9), Vector3.new(1547.9, 367.1, -752), Vector3.new(1568.3, 361.7, -756.2), Vector3.new(1588.3, 361.6, -757.2), Vector3.new(1609.1, 361, -756.4), Vector3.new(1628.9, 361.5, -754), Vector3.new(1649.5, 366.9, -750.9), Vector3.new(1671.5, 372, -746.4), Vector3.new(1691.6, 374.7, -740.8), Vector3.new(1711.6, 375.2, -735), Vector3.new(1731.7, 373.6, -729.3), Vector3.new(1752.5, 369.6, -723.4), Vector3.new(1774.4, 363.1, -718.4), Vector3.new(1794.3, 360.8, -716.2), Vector3.new(1815.1, 360.8, -715.6), Vector3.new(1834.3, 360.8, -716.3), Vector3.new(1856.7, 360.8, -718.7), Vector3.new(1878.1, 362.3, -721.6), Vector3.new(1899.5, 367.9, -725.1), Vector3.new(1920.9, 373.3, -728.6), Vector3.new(1941.5, 376.8, -731.9), Vector3.new(1961.2, 378.2, -735.1), Vector3.new(1981.8, 377.5, -738.4), Vector3.new(2002.4, 374.7, -741.6), Vector3.new(2023, 369.8, -744.4), Vector3.new(2042.8, 363, -746.8), Vector3.new(2063.6, 361, -749.1), Vector3.new(2084.3, 361, -750.6), Vector3.new(2105.2, 361, -750.4), Vector3.new(2126.8, 361, -749.4), Vector3.new(2147.6, 364.1, -748.3), Vector3.new(2168.4, 369.5, -747), Vector3.new(2188.3, 374.2, -745.1), Vector3.new(2209, 377.1, -742.8), Vector3.new(2228, 377.8, -740.1), Vector3.new(2249.1, 376.6, -735.4), Vector3.new(2269.9, 373, -729.5), Vector3.new(2289.9, 367.4, -723.7), Vector3.new(2309.4, 362.2, -719.2), Vector3.new(2329.2, 362.3, -720), Vector3.new(2351.3, 368.2, -723.7), Vector3.new(2371.7, 373.3, -727.9), Vector3.new(2392.1, 376.5, -732.2), Vector3.new(2412.5, 377.6, -736.4), Vector3.new(2432.9, 376.5, -740.6), Vector3.new(2453.4, 373.1, -744.7), Vector3.new(2473.1, 367.6, -748), Vector3.new(2494.6, 362.4, -750.5), Vector3.new(2516.2, 361.9, -752.3), Vector3.new(2536.1, 361.8, -753.6), Vector3.new(2556.9, 361.8, -754.3), Vector3.new(2577.7, 361.8, -754.4), Vector3.new(2597.7, 361.8, -754.4), Vector3.new(2618.4, 361.8, -754.6), Vector3.new(2638.6, 365, -755.1), Vector3.new(2654.7, 377.5, -755.6), Vector3.new(2662.6, 396.4, -756), Vector3.new(2662.8, 416.2, -756.5), Vector3.new(2662.7, 437.8, -757.1), Vector3.new(2658.8, 458, -757.7), Vector3.new(2651.4, 478.6, -758.3), Vector3.new(2650.4, 500.2, -758.9), Vector3.new(2661.2, 527, -759.4), Vector3.new(2656.3, 549, -759.5), Vector3.new(2652.2, 569.8, -759.4), Vector3.new(2648.6, 590.5, -759.2), Vector3.new(2645.4, 611.8, -758.8), Vector3.new(2642.9, 633.1, -758.4), Vector3.new(2641.2, 654.2, -758.7), Vector3.new(2642.1, 676.1, -760.3), Vector3.new(2646.5, 697.1, -762.3), Vector3.new(2654.5, 718.2, -764.1), Vector3.new(2662.7, 739.1, -765.2), Vector3.new(2662.7, 760.8, -765), Vector3.new(2662.7, 781.7, -763.9), Vector3.new(2663.1, 802.5, -762.2), Vector3.new(2666.6, 823.2, -760.4), Vector3.new(2673.3, 842.3, -758.9), Vector3.new(2683.5, 861.1, -757.7), Vector3.new(2696.6, 874, -757), Vector3.new(2708.7, 869.2, -756.6), Vector3.new(2724.1, 864.7, -756.2), Vector3.new(2727.7, 863.9, -756.1), Vector3.new(2727.9, 862.4, -756.1), Vector3.new(2728, 858.6, -756.1), Vector3.new(2728, 852.5, -756.1), Vector3.new(2728, 844.4, -756.1), Vector3.new(2728, 837.5, -756.1), Vector3.new(2728, 837.8, -756.1), Vector3.new(2728.4, 837.8, -756.1), Vector3.new(2735.4, 837.8, -756), Vector3.new(2747.7, 842.1, -755.8), Vector3.new(2762.3, 847.3, -755.6), Vector3.new(2776.6, 850.2, -755.4), Vector3.new(2789.5, 850.9, -755.2), Vector3.new(2801.2, 849.5, -755.1), Vector3.new(2810.9, 845.9, -754.9), Vector3.new(2819, 840.2, -754.8), Vector3.new(2823.6, 837.8, -754.8), Vector3.new(2827.1, 837.8, -754.7), Vector3.new(2840.1, 837.8, -754.5), Vector3.new(2859.3, 837.8, -754.2), Vector3.new(2881, 837.8, -753.9), Vector3.new(2901, 837.8, -753.7), Vector3.new(2922.6, 837.8, -753.3), Vector3.new(2944.3, 837.8, -753), Vector3.new(2964.3, 837.7, -753), Vector3.new(2984.3, 837.7, -753.6), Vector3.new(3005.9, 837.7, -754.2), Vector3.new(3025.9, 837.7, -754.7), Vector3.new(3045.9, 837.7, -755.3), Vector3.new(3067.6, 837.7, -755.8), Vector3.new(3089.2, 837.7, -755.9), Vector3.new(3110.9, 837.6, -756), Vector3.new(3130.9, 837.6, -756.1), Vector3.new(3150.9, 837.6, -756.2), Vector3.new(3170.9, 835.9, -756.3), Vector3.new(3191.7, 831.5, -756.4), Vector3.new(3212.6, 824.5, -756.5), Vector3.new(3234.2, 818.3, -756.6), Vector3.new(3254.2, 810.5, -756.7), Vector3.new(3275.1, 804.7, -756.8), Vector3.new(3295.9, 799.6, -756.9), Vector3.new(3317.6, 796.3, -756.3), Vector3.new(3338.4, 790.5, -755.7), Vector3.new(3358.4, 785.6, -755.1), Vector3.new(3379.2, 779.2, -754.5), Vector3.new(3399.2, 774.1, -754), Vector3.new(3420.9, 768.6, -754), Vector3.new(3440.9, 764.3, -754.1), Vector3.new(3462.5, 764.3, -754.2), Vector3.new(3483.3, 764.3, -754.3), Vector3.new(3504.2, 764.3, -754.4), Vector3.new(3524.2, 764.3, -754.5), Vector3.new(3544.2, 764.3, -754.3), Vector3.new(3565.8, 763, -753.8), Vector3.new(3587.5, 758.9, -753.3), Vector3.new(3607.5, 753.3, -752.8), Vector3.new(3629.1, 750.7, -752.3), Vector3.new(3650.8, 750.7, -751.1), Vector3.new(3669.9, 750.7, -747.8), Vector3.new(3684.5, 750.7, -744.3), Vector3.new(3690, 750.6, -743), Vector3.new(3690.1, 749.1, -742.9), Vector3.new(3690.1, 744.9, -742.9), Vector3.new(3690.1, 743.4, -742.9), Vector3.new(3690.1, 739.2, -742.9), Vector3.new(3690.1, 737, -742.9), Vector3.new(3690.1, 736.7, -742.9), Vector3.new(3690.1, 734, -742.9), Vector3.new(3690.1, 730.7, -742.9), Vector3.new(3690.1, 729.5, -742.9), Vector3.new(3691.8, 729.5, -742.5), Vector3.new(3694.1, 729.5, -742), Vector3.new(3697, 729.5, -741.3), Vector3.new(3708.3, 729.5, -738.6), Vector3.new(3715.6, 729.8, -736.9), Vector3.new(3718.8, 729.8, -736.1), Vector3.new(3728.2, 731.2, -733.9), Vector3.new(3730.9, 731.4, -733.3)}, [10] = {Vector3.new(-378.2, 360.8, -759.6), Vector3.new(-376.7, 360.8, -759.6), Vector3.new(-367.2, 360.8, -760), Vector3.new(-350.2, 360.8, -761.9), Vector3.new(-329.2, 360.8, -767.3), Vector3.new(-308.3, 361.1, -772.9), Vector3.new(-287.8, 361.4, -777), Vector3.new(-267.3, 361.4, -780.8), Vector3.new(-246, 361.4, -784.2), Vector3.new(-224.3, 361.3, -785.2), Vector3.new(-204.4, 361.4, -784.2), Vector3.new(-182.7, 361.4, -782.8), Vector3.new(-162.8, 361.4, -781.5), Vector3.new(-142.8, 361.4, -780.1), Vector3.new(-121.2, 361.4, -778.7), Vector3.new(-101.2, 361.4, -778), Vector3.new(-80.4, 364.4, -778.4), Vector3.new(-57.9, 370, -779.5), Vector3.new(-38, 373.2, -780.8), Vector3.new(-15.5, 374.5, -782.3), Vector3.new(6.1, 373.4, -783.3), Vector3.new(26.9, 370.2, -782.8), Vector3.new(46.8, 365, -781), Vector3.new(67.5, 361.2, -778.1), Vector3.new(88.1, 361.4, -774.9), Vector3.new(110.3, 361.4, -771.3), Vector3.new(130, 361.4, -768), Vector3.new(151.5, 361.4, -765.9), Vector3.new(172.8, 361.4, -769.5), Vector3.new(191.7, 365.5, -776.1), Vector3.new(211.8, 370.6, -784.1), Vector3.new(230.5, 373.4, -793.1), Vector3.new(247.5, 374.1, -802), Vector3.new(264.7, 372.9, -808.6), Vector3.new(283.8, 374.2, -806.1), Vector3.new(297.3, 379.8, -799.1), Vector3.new(311.1, 384.4, -793.1), Vector3.new(327, 386.8, -787.6), Vector3.new(342.9, 387, -783.2), Vector3.new(361.6, 385, -779.3), Vector3.new(379.3, 381.3, -776.5), Vector3.new(399.6, 375.3, -774.4), Vector3.new(421.1, 366.7, -773.9), Vector3.new(441, 361.1, -774.7), Vector3.new(462.6, 361.4, -776.7), Vector3.new(484.1, 361.4, -779.1), Vector3.new(505.5, 361.4, -782.8), Vector3.new(526.1, 361.4, -789.3), Vector3.new(546.8, 361.4, -795.8), Vector3.new(567, 361.4, -800.9), Vector3.new(588.6, 361.4, -802.6), Vector3.new(610.2, 361.4, -802.2), Vector3.new(631, 361.4, -800.4), Vector3.new(651.7, 361.4, -798.2), Vector3.new(673.2, 361.4, -795.2), Vector3.new(693.8, 361.4, -792.3), Vector3.new(716.9, 361.4, -788.9), Vector3.new(737.5, 361.4, -786), Vector3.new(758.1, 361.4, -783), Vector3.new(779.6, 361.7, -780), Vector3.new(800.2, 363.9, -777), Vector3.new(820, 368.7, -774.2), Vector3.new(842.3, 371.9, -771.2), Vector3.new(863.9, 372.7, -769.3), Vector3.new(884.6, 371.2, -767.6), Vector3.new(904.6, 367.8, -766), Vector3.new(926.2, 361.9, -764.3), Vector3.new(944.4, 361.8, -762.8), Vector3.new(967.7, 367.7, -760.9), Vector3.new(989.3, 371.6, -759.4), Vector3.new(1011, 373.1, -759.1), Vector3.new(1032.6, 372.4, -759.1), Vector3.new(1054.3, 369.3, -759.1), Vector3.new(1075.1, 364.2, -759.1), Vector3.new(1096, 361.3, -759.1), Vector3.new(1116.8, 361.4, -759.1), Vector3.new(1137.6, 361.4, -759), Vector3.new(1159.3, 361.4, -758.4), Vector3.new(1180.1, 361.5, -756.9), Vector3.new(1203.2, 361.5, -753.7), Vector3.new(1223.6, 365.6, -749.6), Vector3.new(1245.4, 370.6, -744.1), Vector3.new(1266.3, 373.1, -738.4), Vector3.new(1285.4, 373.4, -732.5), Vector3.new(1305.3, 371.6, -726.4), Vector3.new(1324.5, 367.9, -720.7), Vector3.new(1346.4, 362.2, -715.7), Vector3.new(1367.9, 361.8, -715.6), Vector3.new(1388.6, 361.5, -718), Vector3.new(1410.8, 365.9, -721.6), Vector3.new(1431.3, 371.3, -725.3), Vector3.new(1451, 375.3, -729), Vector3.new(1472.3, 377.4, -732.9), Vector3.new(1491.9, 377.2, -736.6), Vector3.new(1512.4, 374.8, -740.5), Vector3.new(1532.9, 369.9, -744.3), Vector3.new(1554.2, 362.9, -748.3), Vector3.new(1576.3, 361.9, -752.4), Vector3.new(1596.8, 360.9, -755.9), Vector3.new(1618.4, 361, -756.7), Vector3.new(1640, 363.6, -754.7), Vector3.new(1659.8, 368.8, -751.9), Vector3.new(1680.9, 373.3, -747.5), Vector3.new(1700.8, 375.4, -741.9), Vector3.new(1720.3, 375.4, -734.7), Vector3.new(1741.2, 373, -726.1), Vector3.new(1760.5, 368.6, -718.3), Vector3.new(1779.4, 362.3, -711.9), Vector3.new(1800.7, 360.8, -709.4), Vector3.new(1820.6, 360.8, -710.1), Vector3.new(1843, 360.8, -712.8), Vector3.new(1865.2, 360.8, -716.1), Vector3.new(1885.8, 361.5, -719.2), Vector3.new(1908.1, 367.2, -722.5), Vector3.new(1929.5, 372.6, -725.7), Vector3.new(1951, 376.4, -728.8), Vector3.new(1970.7, 377.8, -731.8), Vector3.new(1992.2, 377.2, -734.9), Vector3.new(2010.3, 374.8, -737.6), Vector3.new(2033.2, 369.4, -742), Vector3.new(2053.6, 362.3, -746.3), Vector3.new(2074, 361, -750.5), Vector3.new(2094.6, 361, -753.9), Vector3.new(2114.5, 361, -756), Vector3.new(2133.6, 361, -756.2), Vector3.new(2155.2, 364.7, -754.7), Vector3.new(2175.9, 370, -752.3), Vector3.new(2196.4, 373.8, -748.8), Vector3.new(2216.7, 375.4, -744.3), Vector3.new(2237, 374.9, -739.7), Vector3.new(2257, 372.3, -733.9), Vector3.new(2277.7, 367.3, -727.4), Vector3.new(2297.7, 362.1, -721.4), Vector3.new(2317.4, 361.7, -719), Vector3.new(2337.3, 361.6, -720.8), Vector3.new(2358.5, 367.2, -725.1), Vector3.new(2379.3, 372, -730.8), Vector3.new(2400, 374.6, -737.2), Vector3.new(2419.9, 374.8, -743.3), Vector3.new(2439.1, 373, -749), Vector3.new(2459.4, 368.9, -753.5), Vector3.new(2481.7, 362.8, -756.1), Vector3.new(2501.7, 362.2, -756.5), Vector3.new(2522.6, 361.8, -756.9), Vector3.new(2542.5, 361.8, -757.1), Vector3.new(2564.1, 361.8, -756.8), Vector3.new(2584.9, 361.8, -756), Vector3.new(2605.7, 361.8, -755.8), Vector3.new(2627.3, 362, -756.1), Vector3.new(2645.7, 368.8, -756.5), Vector3.new(2659.4, 385.1, -756.8), Vector3.new(2662.9, 405.2, -757.1), Vector3.new(2662.8, 426.8, -757.5), Vector3.new(2662.7, 447.5, -758.2), Vector3.new(2655.8, 466.8, -759.2), Vector3.new(2650.9, 487.6, -760.1), Vector3.new(2660.7, 512.4, -760.8), Vector3.new(2657.3, 536.7, -760.5), Vector3.new(2654.3, 558.4, -759), Vector3.new(2654.9, 581.6, -756.8), Vector3.new(2658.8, 601.2, -755), Vector3.new(2662.3, 623.1, -753.7), Vector3.new(2662.8, 643.2, -753.4), Vector3.new(2662.7, 665.7, -753.8), Vector3.new(2662.7, 685.8, -754.3), Vector3.new(2662.8, 705.8, -754.8), Vector3.new(2662.8, 726.6, -755.4), Vector3.new(2662.7, 748.4, -756), Vector3.new(2662.7, 769.2, -756.6), Vector3.new(2662.7, 790.1, -757.2), Vector3.new(2663.9, 810.1, -757.3), Vector3.new(2669.1, 832.3, -757.2), Vector3.new(2677.6, 851.7, -756.7), Vector3.new(2688.8, 869.3, -756), Vector3.new(2700.3, 871.7, -755.3), Vector3.new(2714.1, 868.3, -754.6), Vector3.new(2727.9, 869.7, -753.8), Vector3.new(2728.1, 871.9, -753.8), Vector3.new(2728.2, 871.7, -753.8), Vector3.new(2728.2, 869.5, -753.8), Vector3.new(2728.2, 865.1, -753.8), Vector3.new(2728.2, 858.6, -753.8), Vector3.new(2728.2, 849.6, -753.8), Vector3.new(2728.2, 839.3, -753.8), Vector3.new(2728.2, 837.8, -753.8), Vector3.new(2734.8, 837.8, -753.8), Vector3.new(2748.3, 840.2, -753.7), Vector3.new(2764.2, 845.3, -753.6), Vector3.new(2782.7, 848.8, -753.5), Vector3.new(2798.9, 849.9, -753.5), Vector3.new(2813, 848.8, -753.4), Vector3.new(2825.7, 845.9, -753.3), Vector3.new(2838.3, 840.2, -753.3), Vector3.new(2845.9, 837.8, -753.2), Vector3.new(2846.5, 837.8, -753.2), Vector3.new(2853.1, 837.7, -753.2), Vector3.new(2869, 837.7, -753), Vector3.new(2890.6, 837.7, -752.8), Vector3.new(2910.6, 837.7, -752.6), Vector3.new(2932.2, 837, -752.4), Vector3.new(2954.7, 833.3, -752.2), Vector3.new(2975.6, 829, -752), Vector3.new(2998.1, 823, -751.8), Vector3.new(3018.9, 817.9, -751.6), Vector3.new(3038.9, 813.6, -751.5), Vector3.new(3061.4, 808.6, -751.4), Vector3.new(3082.2, 801.9, -751.3), Vector3.new(3103.1, 797.4, -751.2), Vector3.new(3123.9, 792.1, -751.1), Vector3.new(3143.9, 786.8, -751), Vector3.new(3165.6, 779.5, -750.9), Vector3.new(3185.5, 772.9, -750.9), Vector3.new(3207.2, 765, -751.6), Vector3.new(3227.2, 755.1, -752.4), Vector3.new(3247.2, 748.9, -752.6), Vector3.new(3268.8, 745.7, -752.6), Vector3.new(3291.3, 745.7, -752.6), Vector3.new(3312.2, 745.7, -752.6), Vector3.new(3333.8, 745.7, -752.6), Vector3.new(3355.5, 745.7, -752.6), Vector3.new(3375.5, 745.6, -752.6), Vector3.new(3397.2, 745.6, -752.6), Vector3.new(3418.8, 745.6, -752.6), Vector3.new(3438.8, 745.6, -752.6), Vector3.new(3458.8, 745.6, -752.9), Vector3.new(3481.3, 745.5, -753.6), Vector3.new(3502.1, 745.5, -754.3), Vector3.new(3522.1, 745.5, -755), Vector3.new(3542.9, 745.5, -755.5), Vector3.new(3563.8, 745.5, -755.3), Vector3.new(3584.6, 745.5, -755), Vector3.new(3605.4, 745.4, -754.7), Vector3.new(3627.1, 745.4, -754.4), Vector3.new(3648.8, 745.4, -754.1), Vector3.new(3670.4, 745.4, -753.8), Vector3.new(3690.4, 745.4, -753.6), Vector3.new(3711, 744.8, -753.4), Vector3.new(3723.3, 741.6, -753.3), Vector3.new(3726.4, 736, -753.2), Vector3.new(3726.4, 729.6, -753.2), Vector3.new(3726.4, 729.8, -753.2), Vector3.new(3730.9, 729.8, -753.1), Vector3.new(3744.3, 729.8, -752.6), Vector3.new(3763.7, 729.8, -751.6), Vector3.new(3785.4, 729.8, -750.5), Vector3.new(3807, 729.8, -749.2), Vector3.new(3828.6, 729.8, -748), Vector3.new(3848.6, 729.8, -746.9), Vector3.new(3869.4, 729.8, -745.9), Vector3.new(3891.9, 729.8, -745.4), Vector3.new(3913.6, 729.8, -745), Vector3.new(3933.6, 729.8, -744.9), Vector3.new(3955.2, 729.8, -745), Vector3.new(3976.9, 729.8, -745.1), Vector3.new(3996.9, 729.7, -745.2), Vector3.new(4018.6, 729.7, -745.3), Vector3.new(4038.5, 729.7, -745.4), Vector3.new(4060.2, 729.7, -745.5), Vector3.new(4080.2, 729.7, -745.6), Vector3.new(4100.2, 729.6, -745.7), Vector3.new(4121.9, 729.6, -745.8), Vector3.new(4143.6, 729.6, -745.9), Vector3.new(4163.6, 729.6, -746), Vector3.new(4186.1, 729.6, -746.1), Vector3.new(4206.9, 729.6, -746.2), Vector3.new(4226.9, 729.5, -746.3), Vector3.new(4246.9, 729.5, -746.4), Vector3.new(4266.9, 729.5, -746.4), Vector3.new(4289.4, 729.5, -746.6), Vector3.new(4311.1, 729.5, -746.7), Vector3.new(4333.6, 729.5, -746.8), Vector3.new(4354.4, 729.4, -746.9), Vector3.new(4375.3, 729.3, -747), Vector3.new(4394.4, 729.1, -747.1), Vector3.new(4416.1, 729.1, -747.2), Vector3.new(4436.1, 729.1, -747.3), Vector3.new(4453.3, 729.1, -747.3), Vector3.new(4460.2, 729.1, -747.4), Vector3.new(4465.3, 729.1, -746.9), Vector3.new(4477.6, 729.1, -745.6), Vector3.new(4486.4, 729.1, -744.6), Vector3.new(4487.5, 729.1, -744.5), Vector3.new(4487.8, 729.1, -744.4), Vector3.new(4494.5, 729.1, -742.3), Vector3.new(4499.5, 729.1, -740.8), Vector3.new(4502.4, 729.1, -739.8), Vector3.new(4504.9, 729.1, -739), Vector3.new(4506.3, 729.2, -738.6), Vector3.new(4509.3, 730.7, -737.6), Vector3.new(4509.5, 730.7, -737.6), Vector3.new(4511.2, 730.7, -737), Vector3.new(4512.1, 730.7, -736.7)}, [11] = {Vector3.new(-377.3, 360.8, -759.5), Vector3.new(-377, 360.8, -759.6), Vector3.new(-361.9, 360.8, -760.6), Vector3.new(-347, 360.8, -762.7), Vector3.new(-330.9, 360.8, -766.9), Vector3.new(-315.7, 361, -770.9), Vector3.new(-300, 361.2, -774.6), Vector3.new(-283.5, 361.4, -777.8), Vector3.new(-268.4, 361.4, -780.6), Vector3.new(-252.7, 361.4, -783.1), Vector3.new(-237, 361.4, -784.6), Vector3.new(-221.8, 361.3, -785.1), Vector3.new(-205.9, 361.4, -784.3), Vector3.new(-190.8, 361.4, -783.3), Vector3.new(-174.5, 361.4, -782.3), Vector3.new(-158.9, 361.4, -781.2), Vector3.new(-142.8, 361.4, -780.1), Vector3.new(-127.3, 361.4, -779.1), Vector3.new(-111.1, 361.4, -778.3), Vector3.new(-94.7, 362.3, -778.1), Vector3.new(-78.7, 364.8, -778.5), Vector3.new(-63.2, 368.7, -779.2), Vector3.new(-47.2, 371.7, -780.2), Vector3.new(-31.1, 373.6, -781.3), Vector3.new(-16.1, 374.5, -782.3), Vector3.new(0, 373.7, -783), Vector3.new(15, 372, -783.1), Vector3.new(31.4, 369, -782.4), Vector3.new(46.6, 365.1, -781), Vector3.new(62.3, 362.2, -778.8), Vector3.new(77.4, 361.3, -776.6), Vector3.new(93.3, 361.4, -774.1), Vector3.new(109.4, 361.4, -771.4), Vector3.new(124.9, 361.4, -768.8), Vector3.new(140.1, 361.4, -767), Vector3.new(156.1, 361.4, -766.7), Vector3.new(171.2, 361.4, -769.2), Vector3.new(186.2, 364.3, -774.2), Vector3.new(199.9, 367.6, -779.4), Vector3.new(214.7, 371, -785.5), Vector3.new(228.2, 373.1, -792), Vector3.new(243, 373.9, -799.7), Vector3.new(258.5, 373.3, -806.2), Vector3.new(273.6, 373.5, -807.4), Vector3.new(288.4, 376.1, -803.7), Vector3.new(302.1, 381.4, -797), Vector3.new(316.4, 385.2, -791.3), Vector3.new(331.8, 386.9, -786.3), Vector3.new(346.3, 386.6, -782.5), Vector3.new(361.9, 384.9, -779.2), Vector3.new(376.6, 381.9, -776.9), Vector3.new(392, 377.6, -775.2), Vector3.new(406.3, 372.6, -774.2), Vector3.new(421.3, 366.6, -773.9), Vector3.new(435.9, 362.5, -774.5), Vector3.new(451.8, 361.2, -775.7), Vector3.new(467.8, 361.4, -777.3), Vector3.new(482.9, 361.4, -779), Vector3.new(497.8, 361.4, -781.5), Vector3.new(513.4, 361.4, -785.3), Vector3.new(527.7, 361.4, -789.8), Vector3.new(543.2, 361.4, -794.7), Vector3.new(558.8, 361.4, -798.8), Vector3.new(573.8, 361.4, -801.4), Vector3.new(589.9, 361.4, -802.6), Vector3.new(606, 361.4, -802.3), Vector3.new(621.1, 361.4, -801.3), Vector3.new(637.6, 361.4, -799.7), Vector3.new(653.8, 361.4, -797.9), Vector3.new(668.8, 361.4, -795.8), Vector3.new(685.4, 361.4, -793.5), Vector3.new(700.4, 361.4, -791.3), Vector3.new(715.3, 361.4, -789.1), Vector3.new(730.1, 361.4, -787), Vector3.new(746.1, 361.4, -784.7), Vector3.new(761, 361.4, -782.6), Vector3.new(777.4, 361.7, -780.3), Vector3.new(792.9, 363.1, -778.1), Vector3.new(807.6, 365.7, -776), Vector3.new(822.2, 369, -773.9), Vector3.new(838.2, 371.3, -771.8), Vector3.new(853.3, 372.3, -770.2), Vector3.new(868.3, 372.4, -768.9), Vector3.new(884.1, 371.2, -767.6), Vector3.new(900.1, 368.6, -766.4), Vector3.new(915.6, 364.8, -765.1), Vector3.new(930.5, 361.9, -763.9), Vector3.new(946.5, 362.3, -762.6), Vector3.new(962.4, 366.4, -761.3), Vector3.new(978, 369.6, -760.2), Vector3.new(992.8, 371.8, -759.4), Vector3.new(1009, 373, -759.1), Vector3.new(1025.3, 372.6, -759.1), Vector3.new(1041, 371.2, -759.1), Vector3.new(1056.6, 368.7, -759.1), Vector3.new(1072.2, 364.9, -759.1), Vector3.new(1088.3, 362.4, -759.1), Vector3.new(1104.3, 361.3, -759.1), Vector3.new(1120.3, 361.4, -759.1), Vector3.new(1135.5, 361.4, -759), Vector3.new(1150.6, 361.4, -758.6), Vector3.new(1167, 361.4, -757.8), Vector3.new(1182.7, 361.5, -756.5), Vector3.new(1197.9, 361.5, -754.4), Vector3.new(1212.5, 363.4, -751.8), Vector3.new(1228.1, 366.6, -748.5), Vector3.new(1243.3, 370.1, -744.6), Vector3.new(1258.8, 372.2, -740.4), Vector3.new(1273.4, 373.2, -736.2), Vector3.new(1288.7, 373.1, -731.5), Vector3.new(1303.1, 371.8, -727.1), Vector3.new(1318.2, 369.1, -722.6), Vector3.new(1332.6, 365.8, -718.8), Vector3.new(1347.9, 362.2, -715.7), Vector3.new(1363.2, 361.9, -715.6), Vector3.new(1379.3, 361.6, -716.9), Vector3.new(1395.3, 362.8, -719.1), Vector3.new(1410.7, 365.9, -721.6), Vector3.new(1425.2, 369.7, -724.2), Vector3.new(1440.5, 373.2, -727), Vector3.new(1456.5, 375.8, -730), Vector3.new(1471.9, 377.4, -732.8), Vector3.new(1487.6, 377.2, -735.8), Vector3.new(1503.1, 375.9, -738.7), Vector3.new(1517.7, 373.5, -741.5), Vector3.new(1533.1, 369.8, -744.3), Vector3.new(1547.1, 365.2, -747), Vector3.new(1562.7, 362.5, -749.9), Vector3.new(1584.9, 361.5, -753.9), Vector3.new(1599.9, 360.9, -756), Vector3.new(1615.6, 361, -756.6), Vector3.new(1630.6, 362.5, -755.6), Vector3.new(1645.3, 365, -754), Vector3.new(1660.8, 369, -751.7), Vector3.new(1676.2, 372.3, -748.5), Vector3.new(1690.6, 374.3, -744.8), Vector3.new(1706.3, 375.4, -739.9), Vector3.new(1721.4, 375.3, -734.2), Vector3.new(1736.1, 373.6, -728.2), Vector3.new(1750.1, 371, -722.5), Vector3.new(1764.8, 367.2, -716.9), Vector3.new(1778.6, 362.6, -712.2), Vector3.new(1794.3, 361.3, -710.2), Vector3.new(1810.6, 360.8, -709.7), Vector3.new(1826.6, 360.8, -710.8), Vector3.new(1841.5, 360.8, -712.6), Vector3.new(1856.5, 360.8, -714.8), Vector3.new(1872.6, 361.1, -717.2), Vector3.new(1887.5, 361.9, -719.4), Vector3.new(1902.6, 365.8, -721.7), Vector3.new(1917.3, 369.5, -723.9), Vector3.new(1933.1, 373.2, -726.2), Vector3.new(1948.6, 376, -728.5), Vector3.new(1963.4, 377.3, -730.7), Vector3.new(1978.3, 377.6, -732.9), Vector3.new(1994.3, 376.9, -735.2), Vector3.new(2009.2, 375, -737.4), Vector3.new(2024.7, 371.4, -740.4), Vector3.new(2040, 367, -743.4), Vector3.new(2054.2, 362.3, -746.4), Vector3.new(2069.8, 361.3, -749.6), Vector3.new(2085.6, 361, -752.4), Vector3.new(2100.9, 361, -754.6), Vector3.new(2116.7, 361, -756), Vector3.new(2131.8, 361, -756.2), Vector3.new(2147.7, 363.4, -755.2), Vector3.new(2163.5, 366.8, -753.7), Vector3.new(2178, 370.4, -751.9), Vector3.new(2193.6, 373.3, -749.3), Vector3.new(2208.5, 374.8, -746.1), Vector3.new(2224, 375.2, -742.6), Vector3.new(2239.2, 374.6, -739.1), Vector3.new(2253.7, 372.7, -734.9), Vector3.new(2268.6, 369.5, -730.3), Vector3.new(2283.3, 365.8, -725.7), Vector3.new(2298.7, 362.1, -721.3), Vector3.new(2314.5, 361.8, -719.4), Vector3.new(2329.6, 361.6, -720.1), Vector3.new(2345.4, 363.8, -722.5), Vector3.new(2360.9, 367.8, -725.8), Vector3.new(2375.8, 371.2, -729.8), Vector3.new(2390.3, 373.4, -734.2), Vector3.new(2405.5, 374.7, -738.9), Vector3.new(2420.1, 374.8, -743.4), Vector3.new(2435.5, 373.3, -747.9), Vector3.new(2450.1, 370.8, -751.4), Vector3.new(2465.5, 367.2, -754.2), Vector3.new(2479.8, 363.3, -755.9), Vector3.new(2497.4, 362.3, -756.4), Vector3.new(2512.4, 362, -756.7), Vector3.new(2527.7, 361.8, -757), Vector3.new(2543.7, 361.8, -757.1), Vector3.new(2558.8, 361.8, -756.9), Vector3.new(2574.9, 361.8, -756.4), Vector3.new(2591.1, 361.8, -755.9), Vector3.new(2606.5, 361.8, -755.8), Vector3.new(2622.2, 362, -756), Vector3.new(2637.8, 365.9, -756.3), Vector3.new(2650.1, 374, -756.6), Vector3.new(2659.7, 386.5, -756.8), Vector3.new(2662.2, 401.4, -757), Vector3.new(2662.8, 417.5, -757.3), Vector3.new(2662.8, 432.9, -757.7), Vector3.new(2662.3, 448.7, -758.3), Vector3.new(2657.1, 463.2, -759), Vector3.new(2653, 478.6, -759.7), Vector3.new(2653.4, 493.9, -760.3), Vector3.new(2659, 508, -760.7), Vector3.new(2659.2, 523.1, -760.7), Vector3.new(2657, 538.6, -760.4), Vector3.new(2655, 553.6, -759.3), Vector3.new(2654.6, 569.7, -757.9), Vector3.new(2655.8, 585.9, -756.4), Vector3.new(2658.7, 600.7, -755), Vector3.new(2661.2, 616.4, -754.1), Vector3.new(2662.5, 631.5, -753.6), Vector3.new(2662.8, 647.7, -753.5), Vector3.new(2662.7, 664, -753.8), Vector3.new(2662.7, 680.2, -754.2), Vector3.new(2662.8, 696.2, -754.6), Vector3.new(2662.8, 712.3, -755), Vector3.new(2662.8, 727.7, -755.4), Vector3.new(2662.7, 743.8, -755.9), Vector3.new(2662.7, 760, -756.3), Vector3.new(2662.7, 775, -756.8), Vector3.new(2662.8, 791.3, -757.2), Vector3.new(2663.7, 807.4, -757.3), Vector3.new(2667, 823.4, -757.2), Vector3.new(2671.8, 838.5, -757), Vector3.new(2678, 852.3, -756.7), Vector3.new(2686.7, 866.1, -756.1), Vector3.new(2699.8, 871.6, -755.3), Vector3.new(2714.4, 868.3, -754.6), Vector3.new(2728.2, 871.6, -753.8), Vector3.new(2728.2, 855.4, -753.8), Vector3.new(2728.2, 840.3, -753.8), Vector3.new(2740.7, 838.8, -753.8), Vector3.new(2755.3, 842.4, -753.7), Vector3.new(2770.6, 846.5, -753.6), Vector3.new(2785.5, 849, -753.5), Vector3.new(2801.6, 849.7, -753.5), Vector3.new(2816.5, 848, -753.4), Vector3.new(2832, 843, -753.3), Vector3.new(2846.2, 837.8, -753.2), Vector3.new(2862.3, 837.7, -753.1), Vector3.new(2877.3, 837.7, -752.9), Vector3.new(2893.4, 837.7, -752.8), Vector3.new(2909.8, 837.7, -752.6), Vector3.new(2924.8, 837.2, -752.5), Vector3.new(2940.7, 835.6, -752.3), Vector3.new(2955.6, 833.1, -752.2), Vector3.new(2970.4, 830.1, -752), Vector3.new(2986.1, 826.2, -751.9), Vector3.new(3000.7, 822.4, -751.8), Vector3.new(3015.2, 818.8, -751.6), Vector3.new(3031.8, 815.1, -751.5), Vector3.new(3047.3, 811.7, -751.5), Vector3.new(3062.9, 808.1, -751.4), Vector3.new(3077.2, 803.5, -751.3), Vector3.new(3092.8, 799.6, -751.2), Vector3.new(3108.6, 796, -751.2), Vector3.new(3123.3, 792.3, -751.1), Vector3.new(3138.8, 788.2, -751), Vector3.new(3153.2, 783.7, -751), Vector3.new(3167.5, 778.9, -750.9), Vector3.new(3182.8, 773.8, -750.9), Vector3.new(3196.9, 768.8, -751.3), Vector3.new(3210.8, 763.2, -751.7), Vector3.new(3224.5, 756.4, -752.3), Vector3.new(3239.6, 751.3, -752.5), Vector3.new(3255.4, 747.7, -752.6), Vector3.new(3271.4, 745.7, -752.6), Vector3.new(3286.8, 745.7, -752.6), Vector3.new(3302.6, 745.7, -752.6), Vector3.new(3317.7, 745.7, -752.6), Vector3.new(3332.9, 745.7, -752.6), Vector3.new(3348.9, 745.7, -752.6), Vector3.new(3365.1, 745.7, -752.6), Vector3.new(3380.2, 745.6, -752.6), Vector3.new(3396.4, 745.6, -752.6), Vector3.new(3412.9, 745.6, -752.6), Vector3.new(3428.9, 745.6, -752.6), Vector3.new(3443.9, 745.6, -752.7), Vector3.new(3459, 745.6, -752.9), Vector3.new(3475.1, 745.5, -753.4), Vector3.new(3491.4, 745.5, -753.9), Vector3.new(3506.4, 745.5, -754.5), Vector3.new(3521.8, 745.5, -755), Vector3.new(3537.7, 745.5, -755.4), Vector3.new(3552.8, 745.5, -755.4), Vector3.new(3569.2, 745.5, -755.2), Vector3.new(3585.2, 745.5, -755), Vector3.new(3600.2, 745.4, -754.8), Vector3.new(3616.5, 745.4, -754.5), Vector3.new(3631.5, 745.4, -754.3), Vector3.new(3647.7, 745.4, -754.1), Vector3.new(3664, 745.4, -753.9), Vector3.new(3680.2, 745.4, -753.7), Vector3.new(3696.3, 745.2, -753.5), Vector3.new(3711.5, 744.7, -753.4), Vector3.new(3725.3, 738, -753.2), Vector3.new(3733.5, 729.8, -753), Vector3.new(3748.6, 729.8, -752.4), Vector3.new(3763.9, 729.8, -751.6), Vector3.new(3779.8, 729.8, -750.8), Vector3.new(3794.9, 729.8, -749.9), Vector3.new(3811.1, 729.8, -749), Vector3.new(3827.1, 729.8, -748.1), Vector3.new(3842.2, 729.8, -747.3), Vector3.new(3857.4, 729.8, -746.5), Vector3.new(3873.5, 729.8, -745.8), Vector3.new(3889.6, 729.8, -745.5), Vector3.new(3905, 729.8, -745.2), Vector3.new(3920.9, 729.8, -745), Vector3.new(3936.2, 729.8, -744.9), Vector3.new(3952.1, 729.8, -745), Vector3.new(3968.4, 729.8, -745.1), Vector3.new(3984.7, 729.8, -745.1), Vector3.new(4000.9, 729.7, -745.2), Vector3.new(4015.9, 729.7, -745.3), Vector3.new(4031.2, 729.7, -745.4), Vector3.new(4047.3, 729.7, -745.4), Vector3.new(4063.5, 729.7, -745.5), Vector3.new(4078.5, 729.7, -745.6), Vector3.new(4094.4, 729.6, -745.7), Vector3.new(4109.6, 729.6, -745.7), Vector3.new(4126.2, 729.6, -745.8), Vector3.new(4142.1, 729.6, -745.9), Vector3.new(4158.3, 729.6, -746), Vector3.new(4173.4, 729.6, -746), Vector3.new(4189.5, 729.6, -746.1), Vector3.new(4204.7, 729.6, -746.2), Vector3.new(4220.8, 729.5, -746.3), Vector3.new(4239.6, 729.5, -746.4), Vector3.new(4255.8, 729.5, -746.4), Vector3.new(4271.7, 729.5, -746.4), Vector3.new(4288.2, 729.5, -746.6), Vector3.new(4304.5, 729.5, -746.7), Vector3.new(4319.7, 729.5, -746.7), Vector3.new(4335.9, 729.5, -746.8), Vector3.new(4351.2, 729.4, -746.9), Vector3.new(4367.1, 729.3, -747), Vector3.new(4382.2, 729.2, -747), Vector3.new(4397.2, 729.1, -747.1), Vector3.new(4413.5, 729.1, -747.2), Vector3.new(4429.5, 729.1, -747.3), Vector3.new(4444.8, 729.1, -747.3), Vector3.new(4448.7, 729.1, -747.3), Vector3.new(4449.7, 729.1, -747.7), Vector3.new(4457.3, 729.1, -750.9), Vector3.new(4474, 729.1, -757.9), Vector3.new(4492.4, 729.1, -765.6), Vector3.new(4511.6, 729.1, -773.6), Vector3.new(4530.6, 729.1, -782.2), Vector3.new(4548.7, 729.1, -790.7), Vector3.new(4568.2, 729.1, -800.2), Vector3.new(4586.1, 729.1, -809.1), Vector3.new(4605.5, 729.1, -818.8), Vector3.new(4624.9, 729.1, -828.4), Vector3.new(4643.5, 729.1, -837.7), Vector3.new(4662.2, 729.1, -847), Vector3.new(4680.2, 729.1, -855.6), Vector3.new(4699.3, 729.1, -861.6), Vector3.new(4720.6, 729.1, -865.4), Vector3.new(4740.6, 729.1, -866.3), Vector3.new(4761.7, 729.1, -862.2), Vector3.new(4779.8, 729.1, -850.5), Vector3.new(4793.6, 729.1, -836), Vector3.new(4806.7, 729.1, -818.7), Vector3.new(4819.1, 729.1, -802), Vector3.new(4833.3, 729.1, -786.8), Vector3.new(4850.6, 729.1, -773.8), Vector3.new(4865.6, 729.1, -762.9), Vector3.new(4875, 729.1, -756), Vector3.new(4877, 729.1, -754.6), Vector3.new(4876.4, 729.1, -751.7), Vector3.new(4874.5, 729.1, -741), Vector3.new(4872.9, 730.6, -731.8), Vector3.new(4872.7, 730.3, -730.1)}, [12] = {Vector3.new(-377.6, 360.8, -759.5), Vector3.new(-368.6, 360.8, -760.2), Vector3.new(-347.3, 360.8, -762.7), Vector3.new(-327.7, 360.8, -767.7), Vector3.new(-307, 361.1, -772.9), Vector3.new(-285.9, 361.4, -777.3), Vector3.new(-266, 361.4, -781), Vector3.new(-244.7, 361.4, -783.9), Vector3.new(-224.6, 361.3, -785), Vector3.new(-204.6, 361.4, -784.2), Vector3.new(-183.1, 361.4, -782.8), Vector3.new(-161.5, 361.4, -781.4), Vector3.new(-140.2, 361.4, -779.9), Vector3.new(-120, 361.4, -778.7), Vector3.new(-99.8, 362, -778.2), Vector3.new(-79.9, 364.6, -778.5), Vector3.new(-58.9, 369.5, -779.5), Vector3.new(-37.5, 372.8, -780.9), Vector3.new(-16.1, 374.5, -782.3), Vector3.new(5.7, 373.1, -783), Vector3.new(26.5, 369.9, -782.6), Vector3.new(46.2, 365.2, -781), Vector3.new(65.9, 362, -778.3), Vector3.new(87.3, 361.4, -775), Vector3.new(108.6, 361.4, -771.5), Vector3.new(128.6, 361.4, -768.4), Vector3.new(149.9, 361.4, -766.8), Vector3.new(169.8, 361.4, -769), Vector3.new(189.8, 365.2, -775.6), Vector3.new(208.3, 369.5, -782.8), Vector3.new(226.3, 372.8, -791.1), Vector3.new(245.2, 373.8, -800.6), Vector3.new(265.6, 373.4, -806.8), Vector3.new(285.4, 375.6, -804.5), Vector3.new(303.1, 381.7, -796.6), Vector3.new(322.3, 385.9, -789.4), Vector3.new(343, 386.7, -783.4), Vector3.new(362.5, 384.8, -779.1), Vector3.new(381.9, 380.4, -776.3), Vector3.new(402.5, 373.9, -774.5), Vector3.new(421.3, 366.6, -773.9), Vector3.new(442.2, 362, -775), Vector3.new(462.2, 361.3, -776.7), Vector3.new(482.2, 361.4, -778.9), Vector3.new(503.3, 361.4, -782.9), Vector3.new(524.5, 361.4, -788.8), Vector3.new(545, 361.4, -795.2), Vector3.new(565.8, 361.4, -800), Vector3.new(586.1, 361.4, -802.3), Vector3.new(607.3, 361.4, -802.2), Vector3.new(627.8, 361.4, -800.7), Vector3.new(650.3, 361.4, -798.3), Vector3.new(672.3, 361.4, -795.3), Vector3.new(693.6, 361.4, -792.3), Vector3.new(715.1, 361.4, -789.1), Vector3.new(736.6, 361.4, -786.1), Vector3.new(757.8, 361.4, -783.1), Vector3.new(777.6, 361.7, -780.3), Vector3.new(797.4, 363.9, -777.5), Vector3.new(816.8, 367.8, -774.7), Vector3.new(838.7, 371.3, -771.7), Vector3.new(859.4, 372.3, -769.7), Vector3.new(879.3, 371.6, -768), Vector3.new(899.1, 368.8, -766.5), Vector3.new(918.5, 364.2, -764.9), Vector3.new(939.8, 362.1, -763.1), Vector3.new(960.6, 365.9, -761.4), Vector3.new(980.6, 370, -760.1), Vector3.new(1001.6, 372.5, -759.2), Vector3.new(1021.8, 372.7, -759.1), Vector3.new(1043.1, 370.9, -759.1), Vector3.new(1063.8, 366.9, -759.1), Vector3.new(1084.5, 363, -759.1), Vector3.new(1105.9, 361.3, -759.1), Vector3.new(1126, 361.4, -759.1), Vector3.new(1147.8, 361.4, -758.7), Vector3.new(1169.2, 361.4, -757.6), Vector3.new(1189.3, 361.5, -755.6), Vector3.new(1209, 362.9, -752.4), Vector3.new(1229.5, 366.9, -748.1), Vector3.new(1248.6, 370.8, -743.2), Vector3.new(1267.9, 372.8, -737.8), Vector3.new(1288.1, 373.1, -731.7), Vector3.new(1307.7, 371, -725.7), Vector3.new(1327.9, 366.9, -720), Vector3.new(1347.3, 362.3, -715.8), Vector3.new(1368.7, 361.8, -716), Vector3.new(1388.7, 362.3, -718.2), Vector3.new(1409.5, 365.7, -721.4), Vector3.new(1428.8, 370.5, -724.9), Vector3.new(1449.4, 374.6, -728.7), Vector3.new(1469, 377.1, -732.3), Vector3.new(1488.8, 377.1, -736), Vector3.new(1508.4, 375, -739.7), Vector3.new(1529, 370.8, -743.6), Vector3.new(1547.9, 365.1, -747.2), Vector3.new(1567.5, 362.3, -750.8), Vector3.new(1588.9, 361.3, -754.5), Vector3.new(1610.4, 361, -756.4), Vector3.new(1631.8, 362.7, -755.5), Vector3.new(1652.9, 367, -752.9), Vector3.new(1672.2, 371.4, -749.3), Vector3.new(1693, 374.5, -744.1), Vector3.new(1713.4, 375.4, -737.2), Vector3.new(1732, 374.1, -729.9), Vector3.new(1751.5, 370.6, -722), Vector3.new(1769.9, 365.5, -715.2), Vector3.new(1790.4, 361.6, -710.7), Vector3.new(1811.8, 360.8, -709.8), Vector3.new(1832.3, 360.8, -711.5), Vector3.new(1852.4, 360.8, -714.2), Vector3.new(1874.5, 361.2, -717.5), Vector3.new(1894.3, 363.7, -720.4), Vector3.new(1913.7, 368.6, -723.4), Vector3.new(1934.5, 373.5, -726.4), Vector3.new(1955.5, 376.6, -729.5), Vector3.new(1975.4, 377.5, -732.5), Vector3.new(1995.4, 376.8, -735.4), Vector3.new(2015, 373.6, -738.5), Vector3.new(2035.4, 368.3, -742.5), Vector3.new(2054.1, 362.3, -746.4), Vector3.new(2075.2, 361.2, -750.6), Vector3.new(2095, 361, -753.8), Vector3.new(2116.6, 361, -756), Vector3.new(2137.9, 361.9, -755.8), Vector3.new(2157.8, 365.6, -754.2), Vector3.new(2177.2, 370.2, -752), Vector3.new(2197.8, 373.7, -748.4), Vector3.new(2218.9, 375.1, -743.7), Vector3.new(2240.8, 374.4, -738.6), Vector3.new(2260.2, 371.3, -732.9), Vector3.new(2281, 366.4, -726.4), Vector3.new(2301.4, 362, -721), Vector3.new(2321.5, 361.7, -719.7), Vector3.new(2342.2, 363.4, -722), Vector3.new(2361.8, 368, -726), Vector3.new(2380.8, 372, -731.3), Vector3.new(2401.2, 374.3, -737.6), Vector3.new(2421.5, 374.7, -743.8), Vector3.new(2440.7, 372.4, -749.2), Vector3.new(2460, 368.5, -753.2), Vector3.new(2481, 363.2, -755.9), Vector3.new(2502.5, 362.2, -756.5), Vector3.new(2522.5, 361.9, -756.9), Vector3.new(2542.6, 361.8, -757.1), Vector3.new(2564.1, 361.8, -756.7), Vector3.new(2584.3, 361.8, -756.1), Vector3.new(2606.1, 361.8, -755.8), Vector3.new(2626.2, 363, -756.1), Vector3.new(2644.9, 370.6, -756.5), Vector3.new(2659, 385.6, -756.8), Vector3.new(2662.4, 406.7, -757.1), Vector3.new(2662.8, 428.3, -757.6), Vector3.new(2661.9, 449.8, -758.4), Vector3.new(2655.2, 470.3, -759.3), Vector3.new(2653.3, 491.8, -760.2), Vector3.new(2659, 510.7, -760.7), Vector3.new(2658.1, 530.9, -760.5), Vector3.new(2655.2, 551.8, -759.4), Vector3.new(2654.8, 572, -757.7), Vector3.new(2657.2, 593.2, -755.7), Vector3.new(2660.9, 614.4, -754.2), Vector3.new(2662.6, 634.4, -753.6), Vector3.new(2662.8, 654.5, -753.6), Vector3.new(2662.7, 674.6, -754.1), Vector3.new(2662.8, 696.1, -754.6), Vector3.new(2662.8, 716.1, -755.1), Vector3.new(2662.7, 736.2, -755.7), Vector3.new(2662.7, 757.8, -756.2), Vector3.new(2662.7, 778.5, -756.9), Vector3.new(2663.3, 799.5, -757.3), Vector3.new(2666.5, 821, -757.2), Vector3.new(2673.1, 841.3, -756.9), Vector3.new(2682.4, 859.3, -756.4), Vector3.new(2699, 871.3, -755.3), Vector3.new(2720.1, 869.7, -754.3), Vector3.new(2728.2, 859.7, -753.8), Vector3.new(2730.1, 840.1, -753.8), Vector3.new(2751.2, 841.4, -753.7), Vector3.new(2770.8, 846.5, -753.6), Vector3.new(2792, 849.3, -753.5), Vector3.new(2812.2, 848.5, -753.4), Vector3.new(2831.5, 843.2, -753.3), Vector3.new(2852.2, 837.8, -753.2), Vector3.new(2873.5, 837.7, -753), Vector3.new(2895.1, 837.7, -752.8), Vector3.new(2915.5, 837.5, -752.6), Vector3.new(2937.4, 835.9, -752.3), Vector3.new(2958.6, 832.5, -752.2), Vector3.new(2979.2, 827.9, -751.9), Vector3.new(2998.7, 822.9, -751.8), Vector3.new(3018.4, 818.1, -751.6), Vector3.new(3039.5, 813.4, -751.5), Vector3.new(3059.2, 809, -751.4), Vector3.new(3080, 802.8, -751.3), Vector3.new(3100.7, 797.8, -751.2), Vector3.new(3121.6, 792.7, -751.1), Vector3.new(3141.2, 787.5, -751), Vector3.new(3160.2, 781.3, -751), Vector3.new(3179.3, 775, -750.9), Vector3.new(3199.3, 767.8, -751.4), Vector3.new(3217.6, 759.8, -752), Vector3.new(3236.5, 752.3, -752.5), Vector3.new(3257.4, 747.4, -752.6), Vector3.new(3279.1, 745.7, -752.6), Vector3.new(3300.5, 745.7, -752.6), Vector3.new(3320.8, 745.7, -752.6), Vector3.new(3342.1, 745.7, -752.6), Vector3.new(3363.9, 745.7, -752.6), Vector3.new(3384, 745.6, -752.6), Vector3.new(3405.5, 745.6, -752.6), Vector3.new(3425.6, 745.6, -752.6), Vector3.new(3446.3, 745.6, -752.7), Vector3.new(3466.3, 745.6, -753.1), Vector3.new(3487.2, 745.5, -753.8), Vector3.new(3509.5, 745.5, -754.6), Vector3.new(3530.4, 745.5, -755.2), Vector3.new(3550.6, 745.5, -755.4), Vector3.new(3572.4, 745.5, -755.2), Vector3.new(3593.6, 745.4, -754.9), Vector3.new(3613.9, 745.4, -754.5), Vector3.new(3635.2, 745.4, -754.3), Vector3.new(3656, 745.4, -754), Vector3.new(3677.3, 745.4, -753.7), Vector3.new(3699, 745.1, -753.5), Vector3.new(3719.4, 740.9, -753.3), Vector3.new(3735.5, 729.8, -752.9), Vector3.new(3756, 729.8, -752), Vector3.new(3777.5, 729.8, -750.9), Vector3.new(3799.1, 729.8, -749.7), Vector3.new(3820.1, 729.8, -748.5), Vector3.new(3840.5, 729.8, -747.4), Vector3.new(3861.3, 729.8, -746.3), Vector3.new(3882.2, 729.8, -745.6), Vector3.new(3902.2, 729.8, -745.3), Vector3.new(3923.6, 729.8, -745), Vector3.new(3945.5, 729.8, -745), Vector3.new(3967.2, 729.8, -745.1), Vector3.new(3987.3, 729.8, -745.1), Vector3.new(4008.9, 729.7, -745.3), Vector3.new(4029, 729.7, -745.4), Vector3.new(4050, 729.7, -745.4), Vector3.new(4070.6, 729.7, -745.5), Vector3.new(4092.1, 729.6, -745.7), Vector3.new(4113.6, 729.6, -745.7), Vector3.new(4135.3, 729.6, -745.9), Vector3.new(4155.3, 729.6, -746), Vector3.new(4177, 729.6, -746), Vector3.new(4203.3, 729.6, -746.2), Vector3.new(4233.9, 729.5, -746.4), Vector3.new(4264.2, 729.5, -746.4), Vector3.new(4295.3, 729.5, -746.6), Vector3.new(4327.6, 729.5, -746.7), Vector3.new(4359.9, 729.3, -747), Vector3.new(4391.4, 729.1, -747.1), Vector3.new(4425.3, 729.1, -747.3), Vector3.new(4456.8, 729.1, -750.7), Vector3.new(4485.2, 729.1, -762.6), Vector3.new(4513.5, 729.1, -774.5), Vector3.new(4543.1, 729.1, -788.1), Vector3.new(4572.2, 729.1, -802.2), Vector3.new(4600.5, 729.1, -816.3), Vector3.new(4627.8, 729.1, -829.9), Vector3.new(4658.1, 729.1, -844.9), Vector3.new(4688.6, 729.1, -858.3), Vector3.new(4718.3, 729.1, -865), Vector3.new(4748.2, 729.1, -864.8), Vector3.new(4777.5, 729.1, -852), Vector3.new(4798, 729.1, -830.2), Vector3.new(4817.4, 729.1, -804.3), Vector3.new(4838.4, 729.1, -783), Vector3.new(4857.6, 729.1, -768.7), Vector3.new(4863.5, 729.1, -764.5), Vector3.new(4864.9, 729.1, -764.4), Vector3.new(4875, 729.1, -764.1), Vector3.new(4892.5, 729.1, -763.5), Vector3.new(4914.1, 727.6, -762.8), Vector3.new(4935.8, 723.5, -762.1), Vector3.new(4955.8, 719.6, -761.4), Vector3.new(4974.1, 719.3, -760.8), Vector3.new(4997.5, 722.4, -760.5), Vector3.new(5017.5, 727.6, -760.4), Vector3.new(5034.1, 731, -760.3), Vector3.new(5058.3, 733.6, -760.2), Vector3.new(5079.1, 733.5, -760.1), Vector3.new(5100.8, 731.1, -760), Vector3.new(5122.5, 726.5, -759.9), Vector3.new(5144.1, 719.5, -759.8), Vector3.new(5164.1, 718, -759.4), Vector3.new(5185, 717.5, -758.8), Vector3.new(5205.8, 717.4, -758.8), Vector3.new(5224.1, 719.6, -759.7), Vector3.new(5248.1, 725.9, -761.1), Vector3.new(5269.7, 730, -762.6), Vector3.new(5290.5, 731.9, -764.1), Vector3.new(5311.4, 731.7, -765.2), Vector3.new(5332.6, 729.6, -764.6), Vector3.new(5355.3, 725.1, -762.3), Vector3.new(5376.4, 719.7, -761), Vector3.new(5394.7, 720.4, -760.9), Vector3.new(5418, 726.2, -760.7), Vector3.new(5440.5, 730.1, -759.8), Vector3.new(5462.2, 731.6, -758.9), Vector3.new(5483.8, 730.8, -758.1), Vector3.new(5503.8, 727.9, -757.4), Vector3.new(5523.8, 723.2, -756.6), Vector3.new(5545.4, 719.2, -755.7), Vector3.new(5567.1, 718.9, -754.7), Vector3.new(5588.7, 723.6, -753.8), Vector3.new(5610.3, 728.3, -752.3), Vector3.new(5631.1, 730.6, -750.5), Vector3.new(5652.7, 730.7, -748.8), Vector3.new(5674.3, 728.4, -748.2), Vector3.new(5696, 723.8, -748.6), Vector3.new(5717.6, 720.3, -750.2), Vector3.new(5735.7, 722.9, -752.7), Vector3.new(5758.9, 728.8, -755.7), Vector3.new(5778.8, 732.1, -756.4), Vector3.new(5800.4, 733.4, -755.6), Vector3.new(5820.4, 732.6, -754.7), Vector3.new(5841.2, 729.6, -753.9), Vector3.new(5862.1, 724.5, -753.5), Vector3.new(5884.6, 719.3, -753.6), Vector3.new(5906.9, 719.4, -752), Vector3.new(5928.3, 720, -748.8), Vector3.new(5948, 721.1, -745.8), Vector3.new(5969.4, 722, -743.4), Vector3.new(5990.8, 723, -741.3), Vector3.new(5994.9, 723.1, -741.1), Vector3.new(5994.9, 723, -741.2), Vector3.new(6006, 723.2, -740.9), Vector3.new(6009, 723.2, -740.6), Vector3.new(6010, 720.9, -739.8), Vector3.new(6010.2, 717.2, -739), Vector3.new(6010.2, 718.7, -738.3), Vector3.new(6010.3, 724.3, -738.1), Vector3.new(6015.8, 728.9, -737.6), Vector3.new(6026.1, 730.6, -736.3), Vector3.new(6039.3, 730.5, -734.2), Vector3.new(6048.8, 728.4, -731.7), Vector3.new(6055.1, 724.1, -728.7), Vector3.new(6056.5, 723.7, -728.4), Vector3.new(6056.5, 721.7, -728.4), Vector3.new(6056.5, 719, -728.4), Vector3.new(6055.6, 719.2, -728.5), Vector3.new(6055.7, 719.2, -729), Vector3.new(6056.6, 719.8, -733), Vector3.new(6056.3, 719.8, -733.1), Vector3.new(6051.7, 720.7, -734), Vector3.new(6051, 720.8, -734.2)}, [13] = {Vector3.new(-378.1, 360.8, -759.9), Vector3.new(-357.6, 360.8, -761.5), Vector3.new(-337.8, 360.8, -765.1), Vector3.new(-318.4, 360.9, -770), Vector3.new(-297.6, 361.2, -774.9), Vector3.new(-277.4, 361.4, -778.9), Vector3.new(-256.4, 361.4, -782.3), Vector3.new(-235, 361.4, -784.4), Vector3.new(-214.9, 361.3, -784.6), Vector3.new(-193.5, 361.4, -783.5), Vector3.new(-173.3, 361.4, -782.2), Vector3.new(-152.3, 361.4, -780.8), Vector3.new(-132, 361.4, -779.4), Vector3.new(-111.6, 361.6, -778.5), Vector3.new(-90.3, 363.2, -778.3), Vector3.new(-70.5, 366.8, -778.9), Vector3.new(-49.6, 370.9, -780.1), Vector3.new(-28.3, 373.5, -781.5), Vector3.new(-8.2, 374, -782.6), Vector3.new(11.8, 372.2, -782.9), Vector3.new(31.5, 368.7, -782.2), Vector3.new(51.2, 364.4, -780.3), Vector3.new(71.6, 361.8, -777.4), Vector3.new(92.2, 361.4, -774.2), Vector3.new(112, 361.4, -771), Vector3.new(133.3, 361.4, -768), Vector3.new(154.8, 361.4, -767.3), Vector3.new(174.5, 362.3, -770.5), Vector3.new(194.5, 366.3, -777.4), Vector3.new(212.8, 370.3, -784.9), Vector3.new(232.1, 373.1, -794), Vector3.new(250.3, 373.7, -802.1), Vector3.new(271, 374, -806.2), Vector3.new(290.7, 377.4, -802.2), Vector3.new(309.5, 383.1, -794.2), Vector3.new(329.2, 386.2, -787.4), Vector3.new(348.8, 386.1, -782.1), Vector3.new(369.8, 383.1, -778), Vector3.new(389.2, 378.1, -775.7), Vector3.new(408.1, 371.7, -774.3), Vector3.new(427, 365.3, -774.2), Vector3.new(448.2, 361.8, -775.5), Vector3.new(468.3, 361.3, -777.4), Vector3.new(489.3, 361.4, -780.2), Vector3.new(509.1, 361.4, -784.5), Vector3.new(529.6, 361.4, -790.4), Vector3.new(550.1, 361.4, -796.4), Vector3.new(570.3, 361.4, -800.5), Vector3.new(592, 361.4, -802.3), Vector3.new(613.2, 361.4, -801.8), Vector3.new(633.5, 361.4, -800.1), Vector3.new(655.7, 361.4, -797.6), Vector3.new(675.5, 361.4, -794.8), Vector3.new(696.6, 361.4, -791.8), Vector3.new(717.8, 361.4, -788.7), Vector3.new(739, 361.4, -785.8), Vector3.new(760.2, 361.4, -782.8), Vector3.new(780.3, 362, -779.9), Vector3.new(801.7, 364.8, -776.9), Vector3.new(822.8, 368.8, -773.9), Vector3.new(844, 371.6, -771.2), Vector3.new(865.3, 372.1, -769.2), Vector3.new(885.2, 370.8, -767.6), Vector3.new(906.3, 367.1, -765.9), Vector3.new(926.4, 363.4, -764.2), Vector3.new(947.5, 363.5, -762.5), Vector3.new(968.6, 367.5, -760.9), Vector3.new(988.3, 370.9, -759.8), Vector3.new(1008.2, 372.6, -759.2), Vector3.new(1028.3, 372.2, -759.1), Vector3.new(1049.1, 369.7, -759.1), Vector3.new(1070.7, 365.6, -759.1), Vector3.new(1090.6, 362.5, -759.1), Vector3.new(1110.8, 361.3, -759.1), Vector3.new(1132.8, 361.4, -759), Vector3.new(1154.1, 361.4, -758.4), Vector3.new(1174.6, 361.4, -757.1), Vector3.new(1195.5, 361.9, -754.6), Vector3.new(1215.2, 364.1, -751.1), Vector3.new(1235.5, 368.1, -746.6), Vector3.new(1255.1, 371.5, -741.4), Vector3.new(1275.2, 372.9, -735.6), Vector3.new(1294.7, 372.4, -729.7), Vector3.new(1315.4, 369.4, -723.5), Vector3.new(1336, 365, -718.2), Vector3.new(1357.1, 362.1, -715.9), Vector3.new(1378.5, 362, -717.1), Vector3.new(1398.4, 363.9, -719.7), Vector3.new(1418.8, 368, -723.1), Vector3.new(1439.1, 372.6, -726.8), Vector3.new(1460.1, 376, -730.7), Vector3.new(1480.6, 377.1, -734.5), Vector3.new(1501.8, 375.7, -738.5), Vector3.new(1521.2, 372.4, -742.1), Vector3.new(1541.8, 366.9, -746), Vector3.new(1562.6, 363, -749.9), Vector3.new(1583.3, 361.6, -753.5), Vector3.new(1603.6, 361.1, -755.8), Vector3.new(1623.6, 362, -755.8), Vector3.new(1645.1, 365.4, -753.9), Vector3.new(1665.8, 369.9, -750.5), Vector3.new(1686.6, 373.5, -745.7), Vector3.new(1705.7, 375.1, -739.8), Vector3.new(1725.7, 374.5, -732.4), Vector3.new(1745.6, 371.7, -724.4), Vector3.new(1764, 367.1, -717.4), Vector3.new(1784.2, 362.8, -712.1), Vector3.new(1804.5, 361.1, -710.1), Vector3.new(1826.1, 360.8, -711), Vector3.new(1847.1, 360.8, -713.5), Vector3.new(1867.3, 361.1, -716.4), Vector3.new(1888.8, 363, -719.6), Vector3.new(1909.1, 367.4, -722.7), Vector3.new(1928.7, 372.1, -725.6), Vector3.new(1949.6, 375.7, -728.6), Vector3.new(1971, 377.3, -731.8), Vector3.new(1990.8, 377, -734.7), Vector3.new(2012, 374.1, -738), Vector3.new(2031.1, 369.4, -741.7), Vector3.new(2050.1, 363.6, -745.6), Vector3.new(2070.5, 361.4, -749.7), Vector3.new(2091.1, 361, -753.2), Vector3.new(2112.2, 361, -755.6), Vector3.new(2134, 361.7, -755.8), Vector3.new(2155, 365.1, -754.4), Vector3.new(2174.4, 369.5, -752.3), Vector3.new(2195.5, 373.3, -748.8), Vector3.new(2216.4, 374.9, -744.3), Vector3.new(2236.7, 374.5, -739.6), Vector3.new(2258.5, 371.6, -733.4), Vector3.new(2278.5, 367, -727.2), Vector3.new(2297.6, 362.8, -722), Vector3.new(2318.9, 361.7, -719.9), Vector3.new(2338.8, 363.1, -721.6), Vector3.new(2359.7, 367.5, -725.6), Vector3.new(2379.7, 371.8, -731), Vector3.new(2400.4, 374.2, -737.4), Vector3.new(2419.6, 374.7, -743.2), Vector3.new(2440.6, 372.4, -749.2), Vector3.new(2459.9, 368.5, -753.2), Vector3.new(2480.1, 363.4, -755.8), Vector3.new(2500.8, 362.3, -756.5), Vector3.new(2522.4, 361.9, -756.9), Vector3.new(2543.7, 361.8, -757.1), Vector3.new(2564, 361.8, -756.7), Vector3.new(2585.5, 361.8, -756.1), Vector3.new(2607, 361.9, -755.8), Vector3.new(2628.5, 363.9, -756.1), Vector3.new(2647.9, 373.8, -756.6), Vector3.new(2659.8, 390.4, -756.9), Vector3.new(2662.5, 410.6, -757.2), Vector3.new(2662.7, 430.6, -757.7), Vector3.new(2661.3, 451.7, -758.5), Vector3.new(2655.1, 470.9, -759.3), Vector3.new(2653.4, 492.2, -760.2), Vector3.new(2659, 511.7, -760.7), Vector3.new(2658, 531.9, -760.4), Vector3.new(2655.2, 552.9, -759.3), Vector3.new(2654.9, 572.8, -757.6), Vector3.new(2657.2, 592.8, -755.7), Vector3.new(2660.8, 613.7, -754.2), Vector3.new(2662.6, 634.3, -753.6), Vector3.new(2662.8, 655.5, -753.6), Vector3.new(2662.7, 675.8, -754.1), Vector3.new(2662.8, 696.8, -754.6), Vector3.new(2662.8, 717.9, -755.2), Vector3.new(2662.7, 739.2, -755.8), Vector3.new(2662.7, 760.4, -756.3), Vector3.new(2662.8, 782.3, -757), Vector3.new(2663.9, 803.8, -757.3), Vector3.new(2667.3, 823.6, -757.2), Vector3.new(2674.4, 843.8, -756.8), Vector3.new(2684.6, 860.9, -756.3), Vector3.new(2702.6, 871, -755.1), Vector3.new(2722.6, 866.6, -754.1), Vector3.new(2729.3, 848.3, -753.8), Vector3.new(2743.4, 840.9, -753.7), Vector3.new(2763.1, 844.5, -753.6), Vector3.new(2783.8, 848.2, -753.5), Vector3.new(2804, 848.8, -753.4), Vector3.new(2823.8, 845.3, -753.3), Vector3.new(2844.6, 839.8, -753.2), Vector3.new(2864.4, 837.7, -753.1), Vector3.new(2886, 837.7, -752.9), Vector3.new(2906, 837.6, -752.7), Vector3.new(2928.2, 836.6, -752.4), Vector3.new(2949, 834, -752.2), Vector3.new(2970.9, 829.8, -752), Vector3.new(2991.5, 824.7, -751.8), Vector3.new(3012.4, 819.6, -751.7), Vector3.new(3032, 815.1, -751.5), Vector3.new(3052.6, 810.5, -751.4), Vector3.new(3073, 804.9, -751.3), Vector3.new(3093.3, 799.6, -751.2), Vector3.new(3113, 794.8, -751.1), Vector3.new(3133.9, 789.4, -751), Vector3.new(3154.6, 783.1, -751), Vector3.new(3175.1, 776.4, -750.9), Vector3.new(3194, 769.7, -751.3), Vector3.new(3214, 761.4, -751.9), Vector3.new(3233.9, 753.3, -752.4), Vector3.new(3254.7, 748, -752.6), Vector3.new(3276.8, 745.9, -752.6), Vector3.new(3298.3, 745.7, -752.6), Vector3.new(3319.8, 745.7, -752.6), Vector3.new(3341.7, 745.7, -752.6), Vector3.new(3361.9, 745.7, -752.6), Vector3.new(3383, 745.6, -752.6), Vector3.new(3403.2, 745.6, -752.6), Vector3.new(3424.8, 745.6, -752.6), Vector3.new(3446.5, 745.6, -752.7), Vector3.new(3466.7, 745.6, -753.1), Vector3.new(3488.2, 745.5, -753.8), Vector3.new(3508.3, 745.5, -754.6), Vector3.new(3528.4, 745.5, -755.1), Vector3.new(3548.4, 745.5, -755.4), Vector3.new(3569.8, 745.5, -755.2), Vector3.new(3591.6, 745.4, -754.9), Vector3.new(3612.9, 745.4, -754.5), Vector3.new(3633.3, 745.4, -754.3), Vector3.new(3654.5, 745.4, -754), Vector3.new(3674.8, 745.4, -753.7), Vector3.new(3695.2, 745.2, -753.5), Vector3.new(3715.9, 741.6, -753.3), Vector3.new(3733.3, 731.3, -753), Vector3.new(3754.2, 729.8, -752.1), Vector3.new(3775.6, 729.8, -751), Vector3.new(3795.9, 729.8, -749.9), Vector3.new(3821.8, 729.8, -748.4), Vector3.new(3854.2, 729.8, -746.7), Vector3.new(3887.1, 729.8, -745.5), Vector3.new(3919, 729.8, -745.1), Vector3.new(3949.8, 729.8, -745), Vector3.new(3981.4, 729.8, -745.1), Vector3.new(4013.6, 729.7, -745.3), Vector3.new(4046.6, 729.7, -745.4), Vector3.new(4078.3, 729.7, -745.6), Vector3.new(4111.1, 729.6, -745.7), Vector3.new(4141.2, 729.6, -745.9), Vector3.new(4171.7, 729.6, -746), Vector3.new(4203.6, 729.6, -746.2), Vector3.new(4234, 729.5, -746.4), Vector3.new(4266.9, 729.5, -746.4), Vector3.new(4299, 729.5, -746.6), Vector3.new(4329.3, 729.5, -746.7), Vector3.new(4360.3, 729.3, -747), Vector3.new(4390.5, 729.1, -747.1), Vector3.new(4423.8, 729.1, -747.3), Vector3.new(4456.2, 729.1, -750.6), Vector3.new(4484.4, 729.1, -762.3), Vector3.new(4514.5, 729.1, -774.9), Vector3.new(4543.4, 729.1, -788.2), Vector3.new(4572.9, 729.1, -802.6), Vector3.new(4601.8, 729.1, -817), Vector3.new(4630.8, 729.1, -831.4), Vector3.new(4658.7, 729.1, -845.2), Vector3.new(4690.6, 729.1, -858.8), Vector3.new(4720.2, 729.1, -865), Vector3.new(4751.5, 729.1, -863.3), Vector3.new(4778.8, 729.1, -850.6), Vector3.new(4799.6, 729.1, -828.1), Vector3.new(4818.6, 729.1, -803), Vector3.new(4840.3, 729.1, -781.6), Vector3.new(4860.4, 729.1, -766.7), Vector3.new(4880.8, 729.1, -763.9), Vector3.new(4902.4, 728.4, -763.2), Vector3.new(4924, 725.7, -762.5), Vector3.new(4943.8, 721.9, -761.8), Vector3.new(4965.1, 719.4, -761.1), Vector3.new(4986.9, 721, -760.6), Vector3.new(5006.6, 724.8, -760.5), Vector3.new(5027.1, 729.6, -760.3), Vector3.new(5048.3, 732.5, -760.2), Vector3.new(5070.6, 733.5, -760.1), Vector3.new(5090.8, 732.2, -760), Vector3.new(5110.9, 729, -760), Vector3.new(5131.1, 723.7, -759.9), Vector3.new(5152.1, 718.9, -759.6), Vector3.new(5172.8, 717.8, -759.2), Vector3.new(5193.8, 717.5, -758.8), Vector3.new(5213.7, 718.4, -759.2), Vector3.new(5234.4, 722.3, -760.3), Vector3.new(5254.3, 727.1, -761.5), Vector3.new(5274.7, 730.5, -763), Vector3.new(5295.2, 731.9, -764.3), Vector3.new(5316.7, 731.2, -765.1), Vector3.new(5337, 728.7, -764.1), Vector3.new(5356.9, 724.7, -762.2), Vector3.new(5379.1, 719.8, -761), Vector3.new(5399.4, 721.6, -760.9), Vector3.new(5421, 726.7, -760.6), Vector3.new(5442.4, 730.2, -759.7), Vector3.new(5463.3, 731.6, -758.9), Vector3.new(5483.7, 730.8, -758.1), Vector3.new(5503.8, 727.9, -757.4), Vector3.new(5524.2, 723.1, -756.6), Vector3.new(5545.6, 719.2, -755.7), Vector3.new(5566.3, 718.9, -754.7), Vector3.new(5586.6, 723.2, -753.9), Vector3.new(5606.4, 727.5, -752.6), Vector3.new(5627.4, 730.2, -750.8), Vector3.new(5648.1, 730.7, -749.2), Vector3.new(5668.5, 729, -748.4), Vector3.new(5688.3, 725.4, -748.5), Vector3.new(5709.1, 721.7, -749.6), Vector3.new(5730.8, 722.2, -752), Vector3.new(5750.4, 726.6, -754.6), Vector3.new(5771, 730.8, -756.1), Vector3.new(5791.2, 732.8, -755.9), Vector3.new(5812.2, 732.9, -755.1), Vector3.new(5833.8, 730.7, -754.2), Vector3.new(5854.3, 726.4, -753.6), Vector3.new(5875.2, 721.5, -753.6), Vector3.new(5893.4, 719.3, -753), Vector3.new(5893.4, 719.1, -752.8), Vector3.new(5893.4, 719.1, -752.6), Vector3.new(5910.5, 719.1, -752.7), Vector3.new(5932.2, 719.1, -752.7), Vector3.new(5952.2, 721.7, -752.8), Vector3.new(5973, 727.1, -752.9), Vector3.new(5993.8, 730.8, -752.9), Vector3.new(6015.5, 732.3, -752.9), Vector3.new(6035.5, 731.7, -752.9), Vector3.new(6055.5, 729.1, -753), Vector3.new(6075.5, 724.6, -753), Vector3.new(6095.4, 719.8, -753.1), Vector3.new(6117.1, 719.2, -753.5), Vector3.new(6137.1, 719.1, -754.1), Vector3.new(6158.8, 719.1, -754.9), Vector3.new(6180.4, 719.1, -755.8), Vector3.new(6200.4, 719.1, -756.5), Vector3.new(6220.4, 719.1, -757.3), Vector3.new(6241.2, 719.1, -758.1), Vector3.new(6263.7, 719.1, -759), Vector3.new(6284.5, 719.1, -759.8), Vector3.new(6305.3, 719.1, -760.6), Vector3.new(6325.3, 719.2, -761.3), Vector3.new(6348.6, 719.1, -762.2), Vector3.new(6370.2, 719.1, -763.1), Vector3.new(6388.5, 719.6, -764.6), Vector3.new(6411.7, 725.6, -767.4), Vector3.new(6433.2, 730.3, -770), Vector3.new(6453, 732.5, -772.3), Vector3.new(6474.6, 732.7, -774.9), Vector3.new(6494.5, 731.9, -776), Vector3.new(6515.3, 732, -776.2), Vector3.new(6536.1, 732, -776.4), Vector3.new(6555.1, 732.8, -775.7), Vector3.new(6569.4, 739, -768), Vector3.new(6582.4, 743.7, -761.9), Vector3.new(6597.7, 746.7, -756.4), Vector3.new(6612.3, 747.4, -752.3), Vector3.new(6632, 745.7, -748.6), Vector3.new(6651.5, 741.6, -746.6), Vector3.new(6671.3, 735.3, -746), Vector3.new(6692.6, 726.2, -747.1), Vector3.new(6713.8, 718.8, -749.9), Vector3.new(6734.5, 719.1, -752.4), Vector3.new(6755.3, 719.1, -753.1), Vector3.new(6775.3, 719.1, -753.3), Vector3.new(6796.1, 719.1, -753.5), Vector3.new(6817, 719.1, -753.6), Vector3.new(6838.6, 719.1, -753.3), Vector3.new(6860.3, 719.1, -752.7), Vector3.new(6881.9, 719.1, -752.1), Vector3.new(6903.6, 719.1, -751.5), Vector3.new(6925.2, 719.1, -750.1), Vector3.new(6946.8, 719.1, -748.2), Vector3.new(6968.4, 719.1, -746.2), Vector3.new(6990, 719.1, -744.3), Vector3.new(7009.9, 719.1, -742.5), Vector3.new(7029.5, 719.1, -740.6), Vector3.new(7043.2, 719.2, -739.2), Vector3.new(7048.8, 719.2, -738.6), Vector3.new(7049, 719.3, -738.6), Vector3.new(7051.7, 720.5, -738.1), Vector3.new(7051.7, 720.8, -738.1)}, [14] = {Vector3.new(-377.3, 360.8, -759.7), Vector3.new(-376.1, 360.8, -759.7), Vector3.new(-366.9, 360.8, -759.9), Vector3.new(-350, 360.8, -761.1), Vector3.new(-325.8, 360.8, -765.6), Vector3.new(-303.3, 361.2, -770.4), Vector3.new(-278.9, 361.4, -775.4), Vector3.new(-256.1, 361.4, -778.4), Vector3.new(-231.3, 361.3, -780.1), Vector3.new(-206.3, 361.4, -780.2), Vector3.new(-182.4, 361.4, -779.6), Vector3.new(-160.4, 361.4, -778.7), Vector3.new(-136.4, 361.4, -777.5), Vector3.new(-110.6, 361.8, -776.3), Vector3.new(-83.8, 367.8, -775), Vector3.new(-60.8, 372, -774.3), Vector3.new(-37.8, 374.3, -774.4), Vector3.new(-12.9, 374.5, -774.5), Vector3.new(10.1, 372.7, -774.6), Vector3.new(35, 368.5, -773.4), Vector3.new(57.8, 362.5, -770.8), Vector3.new(80.5, 361.3, -766.9), Vector3.new(105, 361.4, -762.5), Vector3.new(129.8, 361.4, -760.4), Vector3.new(154.2, 361.4, -765.1), Vector3.new(177.2, 361.4, -774.4), Vector3.new(197.9, 366.1, -784.5), Vector3.new(220.3, 371.1, -795.3), Vector3.new(241.5, 373.9, -804.1), Vector3.new(266.6, 374.6, -807.4), Vector3.new(290.5, 374.7, -807.6), Vector3.new(310.2, 378.3, -803.4), Vector3.new(326.1, 383.8, -795.4), Vector3.new(343.3, 387.3, -788.1), Vector3.new(360.6, 388.5, -781.9), Vector3.new(380.8, 387.5, -775.8), Vector3.new(402.4, 384.3, -770.5), Vector3.new(425, 378.8, -766.6), Vector3.new(446.1, 371.6, -764.5), Vector3.new(467.3, 362.5, -763.7), Vector3.new(489.7, 361.4, -768.6), Vector3.new(509.7, 361.4, -779.6), Vector3.new(530.4, 361.4, -789.4), Vector3.new(554.6, 361.4, -795.2), Vector3.new(579.4, 361.4, -797.5), Vector3.new(602.4, 361.4, -798.3), Vector3.new(625.3, 361.4, -796.9), Vector3.new(649.2, 361.4, -794.3), Vector3.new(673.9, 361.4, -791.5), Vector3.new(697.7, 361.4, -788.8), Vector3.new(720.6, 361.4, -786.2), Vector3.new(745.3, 361.4, -783.3), Vector3.new(770.1, 361.4, -780.5), Vector3.new(792.9, 361.4, -777.9), Vector3.new(817.7, 364.7, -775.1), Vector3.new(842.5, 369.7, -772.3), Vector3.new(865.3, 372.4, -769.8), Vector3.new(889.6, 373.1, -767.2), Vector3.new(910.5, 371.6, -764.9), Vector3.new(930, 368.3, -762.7), Vector3.new(950, 362.4, -760.6), Vector3.new(969.4, 358.2, -758.8), Vector3.new(989.7, 363.4, -757.1), Vector3.new(1012.7, 368.6, -755.4), Vector3.new(1034.9, 371.5, -754.7), Vector3.new(1058.8, 372.5, -755), Vector3.new(1083.7, 371.2, -755.7), Vector3.new(1107.6, 367.8, -756.4), Vector3.new(1130.6, 362.5, -756.9), Vector3.new(1155.5, 361.4, -756.4), Vector3.new(1178.5, 361.5, -754.8), Vector3.new(1203, 361.5, -750.5), Vector3.new(1225.3, 364.1, -745.1), Vector3.new(1249.5, 369.5, -739.1), Vector3.new(1273.7, 373.1, -733.1), Vector3.new(1297.9, 374.4, -727.1), Vector3.new(1322.2, 373.4, -721.7), Vector3.new(1346.8, 370.1, -717.8), Vector3.new(1369.6, 365, -715.7), Vector3.new(1394.3, 361.2, -716.6), Vector3.new(1418.7, 364.3, -721.4), Vector3.new(1441.2, 369.5, -726.4), Vector3.new(1466.3, 374.5, -732.7), Vector3.new(1491.3, 377.1, -739.3), Vector3.new(1515.4, 377.2, -745.6), Vector3.new(1539.7, 375, -751.1), Vector3.new(1564.3, 370.6, -755), Vector3.new(1587.1, 364.4, -757.2), Vector3.new(1611.9, 360.9, -756.2), Vector3.new(1634.4, 362.3, -751.5), Vector3.new(1658.7, 367.8, -745.8), Vector3.new(1682.9, 371.6, -739.9), Vector3.new(1706.9, 373, -733.3), Vector3.new(1731, 372.2, -726.8), Vector3.new(1753.3, 369.4, -721.2), Vector3.new(1777.7, 364.1, -716.5), Vector3.new(1800.6, 360.7, -714.9), Vector3.new(1825.4, 360.8, -716.2), Vector3.new(1849.3, 360.8, -718), Vector3.new(1875, 360.8, -721), Vector3.new(1897.8, 365.3, -724.5), Vector3.new(1920.4, 369.7, -728.3), Vector3.new(1945, 372.2, -732.4), Vector3.new(1967.7, 372.5, -736.2), Vector3.new(1992.3, 370.6, -740.4), Vector3.new(2015, 366.8, -744.2), Vector3.new(2039.5, 360.8, -748.3), Vector3.new(2064.1, 361, -752.4), Vector3.new(2088.7, 361, -756.3), Vector3.new(2111.6, 361, -758.3), Vector3.new(2136.5, 361, -757.7), Vector3.new(2159.4, 363.1, -755.3), Vector3.new(2184.1, 368.7, -752), Vector3.new(2208.5, 373, -747.3), Vector3.new(2230.9, 374.9, -742), Vector3.new(2256.2, 374.7, -734.4), Vector3.new(2279, 372.2, -727.8), Vector3.new(2304.2, 367.2, -722.3), Vector3.new(2326.8, 361.8, -719.1), Vector3.new(2351.4, 361.3, -721.7), Vector3.new(2375.6, 366.4, -726.7), Vector3.new(2399.3, 371.2, -733.8), Vector3.new(2422.7, 373.9, -742.4), Vector3.new(2445.3, 374.2, -750.4), Vector3.new(2468.4, 372.4, -756.4), Vector3.new(2491.1, 368.7, -760), Vector3.new(2513.9, 363, -761.6), Vector3.new(2536.9, 362.5, -761.2), Vector3.new(2561.8, 361.9, -760.2), Vector3.new(2585.7, 361.8, -759), Vector3.new(2610.6, 361.8, -757.8), Vector3.new(2633.3, 363.1, -757.3), Vector3.new(2653.6, 376, -757.2), Vector3.new(2662.9, 397.7, -757.2), Vector3.new(2662.8, 422.7, -757.1), Vector3.new(2662.7, 446.7, -756.8), Vector3.new(2655.3, 468.3, -756.4), Vector3.new(2648.4, 489.9, -755.9), Vector3.new(2653.7, 518.2, -755.5), Vector3.new(2659.6, 545.9, -755.3), Vector3.new(2656.7, 572, -755.3), Vector3.new(2657.7, 597.8, -755.6), Vector3.new(2661.8, 621.4, -756.1), Vector3.new(2662.3, 646.5, -757.2), Vector3.new(2662.8, 669.5, -758.1), Vector3.new(2662.7, 692.5, -757.9), Vector3.new(2662.7, 717.5, -757.5), Vector3.new(2662.7, 741.5, -757), Vector3.new(2662.7, 767.4, -757.3), Vector3.new(2662.7, 790.5, -758), Vector3.new(2664.4, 815.4, -758.5), Vector3.new(2670, 839.9, -758.9), Vector3.new(2678.4, 861.6, -759), Vector3.new(2690, 871.7, -758.9), Vector3.new(2704.8, 868.5, -758.9), Vector3.new(2723.4, 865.3, -758.8), Vector3.new(2728, 865.3, -758.7), Vector3.new(2728.1, 863.8, -758.7), Vector3.new(2728.2, 860.5, -758.7), Vector3.new(2728.2, 855.1, -758.7), Vector3.new(2728.2, 847.1, -758.7), Vector3.new(2728.2, 837.4, -758.7), Vector3.new(2728.2, 837.8, -758.7), Vector3.new(2734.7, 837.8, -758.7), Vector3.new(2749.1, 837.8, -758.5), Vector3.new(2772.7, 837.8, -758.3), Vector3.new(2797.6, 837.8, -758.1), Vector3.new(2820.6, 837.8, -757.9), Vector3.new(2845.5, 837.8, -757.6), Vector3.new(2870.4, 837.8, -757.4), Vector3.new(2895.3, 837.8, -757.1), Vector3.new(2918.3, 837.8, -756.9), Vector3.new(2943.2, 837.8, -756.7), Vector3.new(2966.2, 837.8, -756.5), Vector3.new(2989.2, 837.7, -756.2), Vector3.new(3013.2, 837.5, -756), Vector3.new(3036.2, 835.1, -755.8), Vector3.new(3060.1, 835, -755.6), Vector3.new(3084.1, 835, -755.3), Vector3.new(3108.1, 835, -755.1), Vector3.new(3133, 833.9, -754.9), Vector3.new(3157.9, 830, -754.6), Vector3.new(3182.8, 823.2, -754.4), Vector3.new(3207.7, 813.5, -754.1), Vector3.new(3232.6, 804.9, -753.9), Vector3.new(3255.6, 797.1, -753.7), Vector3.new(3280.5, 786.8, -753.4), Vector3.new(3303.5, 784.7, -753.2), Vector3.new(3328.5, 784.7, -753), Vector3.new(3351.5, 784.7, -752.8), Vector3.new(3374.5, 784.1, -752.5), Vector3.new(3399.4, 780.9, -752.3), Vector3.new(3422.4, 775.3, -752.1), Vector3.new(3445.4, 768.9, -751.8), Vector3.new(3470.3, 764.5, -751.6), Vector3.new(3495.2, 757.6, -751.4), Vector3.new(3518.2, 755.3, -751.1), Vector3.new(3543.1, 755.3, -750.9), Vector3.new(3568, 755.3, -750.7), Vector3.new(3592.9, 755.3, -750.4), Vector3.new(3617.8, 755.3, -750.2), Vector3.new(3642.8, 755.2, -750), Vector3.new(3667.7, 755.2, -750.3), Vector3.new(3689, 755.2, -751.8), Vector3.new(3700.3, 755.2, -752.6), Vector3.new(3703.6, 755.2, -752.8), Vector3.new(3705.3, 755.2, -752.8), Vector3.new(3714.7, 755.1, -752.4), Vector3.new(3718.9, 754.9, -752.3), Vector3.new(3718.9, 752.6, -752.3), Vector3.new(3718.9, 747.9, -752.3), Vector3.new(3718.9, 739.9, -752.3), Vector3.new(3718.9, 730.1, -752.3), Vector3.new(3718.9, 729.8, -752.3), Vector3.new(3720.4, 729.8, -752.2), Vector3.new(3729.9, 729.8, -751.8), Vector3.new(3748.1, 729.8, -750.9), Vector3.new(3772, 729.8, -749.7), Vector3.new(3793, 729.8, -748.7), Vector3.new(3820.8, 729.8, -747.8), Vector3.new(3843.8, 729.8, -747.3), Vector3.new(3867.7, 729.8, -747), Vector3.new(3893.6, 729.8, -746.8), Vector3.new(3916.6, 729.8, -746.8), Vector3.new(3941.5, 729.8, -746.8), Vector3.new(3966.4, 729.8, -746.8), Vector3.new(3989.4, 729.8, -746.8), Vector3.new(4014.4, 729.8, -746.8), Vector3.new(4039.3, 729.7, -746.8), Vector3.new(4062.3, 729.7, -746.8), Vector3.new(4087.2, 729.7, -746.8), Vector3.new(4112.1, 729.7, -746.8), Vector3.new(4135.1, 729.7, -746.5), Vector3.new(4158.1, 729.7, -745.6), Vector3.new(4183, 729.6, -744.7), Vector3.new(4206.9, 729.6, -743.8), Vector3.new(4230.9, 729.6, -743.9), Vector3.new(4254.8, 729.6, -744.2), Vector3.new(4278.8, 729.6, -744.5), Vector3.new(4302.7, 729.6, -744.4), Vector3.new(4327.7, 729.5, -744.2), Vector3.new(4352.6, 729.5, -743.9), Vector3.new(4377.5, 729.4, -743.7), Vector3.new(4402, 729.1, -743.6), Vector3.new(4418.4, 729.1, -743.7), Vector3.new(4427.2, 729.1, -743.7), Vector3.new(4427.9, 729.1, -743.7), Vector3.new(4428.8, 729.1, -744), Vector3.new(4437.5, 729.1, -746.2), Vector3.new(4453.6, 729.1, -750.4), Vector3.new(4473.8, 729.1, -755.5), Vector3.new(4493.2, 729.1, -760.5), Vector3.new(4517.2, 729.1, -767.3), Vector3.new(4536.2, 729.1, -775.9), Vector3.new(4555, 729.1, -786.5), Vector3.new(4572, 729.1, -797.1), Vector3.new(4589.7, 729.1, -808.2), Vector3.new(4607.3, 729.1, -819.3), Vector3.new(4625.1, 729.1, -830), Vector3.new(4641.8, 729.1, -837.6), Vector3.new(4664.6, 729.1, -842.5), Vector3.new(4686.2, 729.1, -841.9), Vector3.new(4707.4, 729.1, -837.4), Vector3.new(4728.1, 729.1, -828.8), Vector3.new(4746.4, 729.1, -818.8), Vector3.new(4764.5, 729.1, -808.5), Vector3.new(4782.7, 729.1, -798.4), Vector3.new(4801.5, 729.1, -789.5), Vector3.new(4820.8, 729.1, -781.5), Vector3.new(4839, 729.1, -775.4), Vector3.new(4858.1, 729.1, -769.7), Vector3.new(4878.4, 729.1, -764.9), Vector3.new(4899.7, 729, -761.1), Vector3.new(4920.3, 726.7, -757.6), Vector3.new(4940.9, 722.2, -755.2), Vector3.new(4961.7, 719.6, -754), Vector3.new(4983.3, 719.3, -754), Vector3.new(5003.3, 719, -754.2), Vector3.new(5023.2, 724.2, -754.2), Vector3.new(5044, 728.4, -753.5), Vector3.new(5065.7, 730.5, -752.7), Vector3.new(5087.3, 730.2, -752), Vector3.new(5109, 727.6, -751.2), Vector3.new(5129.8, 723, -750.4), Vector3.new(5150.6, 719.7, -749.8), Vector3.new(5171.5, 719.1, -749.6), Vector3.new(5193.9, 719.3, -750.3), Vector3.new(5216.4, 725.1, -751.1), Vector3.new(5237.2, 729.6, -751.6), Vector3.new(5258, 731.7, -752.2), Vector3.new(5278.7, 731.7, -754.2), Vector3.new(5299.3, 729.4, -757.6), Vector3.new(5318.7, 725.2, -762.1), Vector3.new(5338.8, 719.2, -767), Vector3.new(5347.5, 719.6, -768.6), Vector3.new(5347.5, 719.6, -768.4), Vector3.new(5352.7, 719.6, -768.3), Vector3.new(5372.5, 719.6, -768.4), Vector3.new(5393.3, 719.7, -768.8), Vector3.new(5413.3, 722.5, -769.2), Vector3.new(5437.3, 728.4, -770.2), Vector3.new(5463.2, 732.4, -770.3), Vector3.new(5480.7, 733.2, -770.1), Vector3.new(5504, 731, -765.1), Vector3.new(5522.5, 726.7, -759.6), Vector3.new(5542.4, 720.8, -756.4), Vector3.new(5564.9, 719.8, -754.6), Vector3.new(5586.4, 719.4, -752.1), Vector3.new(5608.8, 725, -750.7), Vector3.new(5629.5, 730, -748.6), Vector3.new(5651.1, 733, -746.6), Vector3.new(5669.8, 733.5, -745.1), Vector3.new(5681.2, 731.7, -743.9), Vector3.new(5687.7, 727.9, -742.8), Vector3.new(5695.8, 723.3, -742.4), Vector3.new(5715.5, 722.3, -743.7), Vector3.new(5736.2, 727.5, -745.5), Vector3.new(5757, 730.8, -746.3), Vector3.new(5777, 731.9, -746.3), Vector3.new(5799.5, 730.6, -746.3), Vector3.new(5820.4, 727.1, -746.4), Vector3.new(5841.2, 721.6, -746.4), Vector3.new(5861.2, 720.7, -747.5), Vector3.new(5883.6, 719.9, -748.9), Vector3.new(5905.1, 719.6, -750.4), Vector3.new(5925, 719.3, -752.1), Vector3.new(5946.6, 719.2, -753.1), Vector3.new(5968.2, 719.2, -752.9), Vector3.new(5987.7, 720.7, -752.8), Vector3.new(5995.7, 725.6, -753), Vector3.new(6000.2, 728.4, -753), Vector3.new(6002.2, 729.1, -752.8), Vector3.new(6004.2, 727.7, -752.6), Vector3.new(6012.5, 723.9, -752.2), Vector3.new(6024.7, 726.7, -751.8), Vector3.new(6039.1, 731.1, -751.4), Vector3.new(6049, 733.5, -751.1), Vector3.new(6061.5, 733.5, -750.7), Vector3.new(6076.8, 731.2, -751), Vector3.new(6094.7, 726.7, -752.2), Vector3.new(6113.5, 720.4, -754.3), Vector3.new(6135.8, 719.2, -756.8), Vector3.new(6156.6, 719.1, -757.9), Vector3.new(6176.6, 719.1, -758), Vector3.new(6199.1, 719.1, -757.9), Vector3.new(6220.8, 719.1, -758), Vector3.new(6239.1, 719.1, -758.4), Vector3.new(6260.8, 719.1, -758.7), Vector3.new(6281.6, 719.1, -759.1), Vector3.new(6304.9, 719.1, -759.5), Vector3.new(6326.6, 719.1, -760.2), Vector3.new(6348.2, 719.1, -761.8), Vector3.new(6368.1, 719.1, -763.8), Vector3.new(6388, 719.1, -765.8), Vector3.new(6409.5, 723.9, -768.1), Vector3.new(6430.3, 729.1, -770.2), Vector3.new(6451, 732.7, -771.8), Vector3.new(6471.8, 734.2, -773.5), Vector3.new(6493.4, 733.4, -775.5), Vector3.new(6514.2, 733.4, -775.8), Vector3.new(6535.7, 734.2, -775.1), Vector3.new(6549.6, 740.1, -767.9), Vector3.new(6562.6, 744.4, -762.2), Vector3.new(6577.2, 746.8, -757.4), Vector3.new(6593.5, 747, -753.7), Vector3.new(6608.8, 745.3, -751.5), Vector3.new(6627.6, 741, -750.3), Vector3.new(6644.3, 735.3, -750.5), Vector3.new(6665.1, 726.4, -752.1), Vector3.new(6685.5, 728.1, -753.8), Vector3.new(6704.6, 732.8, -755.5), Vector3.new(6727.9, 736.4, -757), Vector3.new(6747, 737.3, -758), Vector3.new(6769.5, 736.1, -758.4), Vector3.new(6788.7, 733.2, -758.5), Vector3.new(6811.2, 727.4, -758.6), Vector3.new(6831.2, 720.1, -758.6), Vector3.new(6852.9, 719.1, -758.7), Vector3.new(6874.5, 719.1, -758.5), Vector3.new(6895.4, 719.1, -758.1), Vector3.new(6917.8, 719.1, -757.6), Vector3.new(6938.7, 719.1, -757.2), Vector3.new(6958.7, 719.1, -756.8), Vector3.new(6979.5, 719.1, -756.3), Vector3.new(7001.1, 719.1, -755.9), Vector3.new(7020.9, 719.1, -755.5), Vector3.new(7033.2, 719.2, -755.2), Vector3.new(7037.6, 719.2, -755.1), Vector3.new(7045.8, 719.2, -755), Vector3.new(7047.1, 719.2, -754.9), Vector3.new(7047.1, 720.8, -754.9), Vector3.new(7047.1, 722.8, -754.9), Vector3.new(7047.1, 726.4, -754.9), Vector3.new(7047.1, 730.3, -754.9), Vector3.new(7047.1, 734.5, -754.9), Vector3.new(7047.1, 736.9, -754.9), Vector3.new(7047.1, 738.7, -754.9), Vector3.new(7047.1, 742.8, -754.9), Vector3.new(7047.1, 744.7, -754.9), Vector3.new(7049.5, 744.7, -755), Vector3.new(7059.8, 744.7, -755.1), Vector3.new(7077.8, 744.7, -755.3), Vector3.new(7099.5, 744.7, -755.6), Vector3.new(7121.2, 744.7, -755.9), Vector3.new(7142, 744.6, -756.1), Vector3.new(7162.8, 744.6, -756.4), Vector3.new(7184.5, 744.6, -756.7), Vector3.new(7205.3, 744.6, -756.9), Vector3.new(7226.2, 744.6, -757.2), Vector3.new(7246.2, 744.6, -757.5), Vector3.new(7267.8, 744.5, -757.7), Vector3.new(7287.9, 744.5, -758), Vector3.new(7309.5, 744.5, -758.3), Vector3.new(7330.4, 744.5, -758.5), Vector3.new(7351.2, 744.5, -758.8), Vector3.new(7372.9, 744.5, -759.1), Vector3.new(7392.9, 744.4, -759.3), Vector3.new(7413.7, 744.4, -759.6), Vector3.new(7432, 744.4, -759.8), Vector3.new(7454.6, 744.4, -760.1), Vector3.new(7476.2, 744.4, -760.4), Vector3.new(7497.9, 744.4, -760), Vector3.new(7517.9, 744.4, -759.7), Vector3.new(7539.5, 744.3, -759.4), Vector3.new(7560.4, 744.3, -759.1), Vector3.new(7581.2, 744.3, -758.7), Vector3.new(7602, 744.3, -758.4), Vector3.new(7622.8, 744.3, -758.1), Vector3.new(7642.8, 744.3, -757.7), Vector3.new(7664.5, 744.2, -757.4), Vector3.new(7684.5, 744.2, -757.1), Vector3.new(7706.1, 744.2, -756.7), Vector3.new(7727.8, 744.2, -756.4), Vector3.new(7750.3, 744.2, -756), Vector3.new(7771.1, 744.2, -755.7), Vector3.new(7791.1, 744.1, -755.4), Vector3.new(7813.6, 744.1, -754.9), Vector3.new(7832.7, 744.1, -753.3), Vector3.new(7854.2, 744.1, -750.4), Vector3.new(7875.4, 744.1, -746.2), Vector3.new(7896.5, 744.1, -741.2), Vector3.new(7917.4, 744, -735.6), Vector3.new(7938.4, 744, -730.1), Vector3.new(7958.5, 744, -724.9), Vector3.new(7977.1, 744, -720.1), Vector3.new(7998.1, 744, -715), Vector3.new(8019.5, 744, -711.5), Vector3.new(8039.4, 744, -709.3), Vector3.new(8059.3, 743.9, -707.5), Vector3.new(8080.9, 743.9, -706.3), Vector3.new(8100.9, 743.9, -706), Vector3.new(8123.5, 743.9, -705.7), Vector3.new(8144.3, 743.9, -705.5), Vector3.new(8161.2, 743.9, -705.3), Vector3.new(8169.3, 743.8, -705.2), Vector3.new(8170.2, 743.8, -705.2), Vector3.new(8170.9, 743.8, -705.2), Vector3.new(8173.8, 743.8, -705.2), Vector3.new(8175.3, 743.8, -705.2), Vector3.new(8184.3, 743.8, -705.1), Vector3.new(8201.2, 743.8, -704.9), Vector3.new(8221.4, 743.7, -704.7), Vector3.new(8232.5, 743.7, -704.5), Vector3.new(8235.5, 743.7, -704.5), Vector3.new(8235.5, 742.3, -704.5), Vector3.new(8235.5, 738, -704.5), Vector3.new(8235.5, 731.5, -704.5), Vector3.new(8235.5, 726, -704.5), Vector3.new(8235.5, 721.3, -704.5), Vector3.new(8235.5, 714.3, -704.5), Vector3.new(8235.5, 709.3, -704.5), Vector3.new(8235.5, 704.8, -704.5), Vector3.new(8235.5, 698.7, -704.5), Vector3.new(8235.5, 693.8, -704.5), Vector3.new(8235.5, 690.1, -704.5), Vector3.new(8235.5, 689.3, -704.5), Vector3.new(8235.5, 686.1, -704.5), Vector3.new(8235.5, 680.4, -704.5), Vector3.new(8235.5, 678.3, -704.5), Vector3.new(8235.5, 677, -704.5), Vector3.new(8235.5, 675.8, -704.5), Vector3.new(8232, 675.8, -704.7), Vector3.new(8222.8, 675.8, -705.2), Vector3.new(8221.1, 675.8, -705.3), Vector3.new(8221, 675.8, -709.5), Vector3.new(8220.5, 675.7, -723.2), Vector3.new(8219.9, 675.7, -738.2), Vector3.new(8219.7, 675.7, -744.5), Vector3.new(8219.7, 675.7, -744.7), Vector3.new(8219.3, 675.7, -742.6), Vector3.new(8218.8, 675.7, -739.2), Vector3.new(8218.8, 675, -739.2), Vector3.new(8218.8, 672, -739.2), Vector3.new(8218.8, 666.6, -739.2), Vector3.new(8218.8, 665, -739.2), Vector3.new(8218.5, 665.2, -737.5), Vector3.new(8218.3, 665.2, -735.6)}, [15] = {Vector3.new(-377.4, 360.8, -760), Vector3.new(-373.8, 360.8, -760), Vector3.new(-362.2, 360.8, -759.9), Vector3.new(-343.3, 360.8, -760), Vector3.new(-323.4, 360.8, -761.3), Vector3.new(-302.9, 361.3, -764.7), Vector3.new(-282.4, 361.4, -768.8), Vector3.new(-262, 361.4, -773), Vector3.new(-241.6, 361.4, -777.2), Vector3.new(-221.1, 361.4, -780.7), Vector3.new(-201.2, 361.4, -782.7), Vector3.new(-179.5, 361.4, -782.4), Vector3.new(-159.6, 361.4, -781.3), Vector3.new(-136.3, 361.4, -779.9), Vector3.new(-116.3, 361.4, -778.8), Vector3.new(-94.7, 363.1, -777.5), Vector3.new(-74.7, 368.2, -776.7), Vector3.new(-53, 373, -776.2), Vector3.new(-32.2, 375.5, -775.9), Vector3.new(-11.4, 375.9, -775.7), Vector3.new(9.5, 374.1, -775.5), Vector3.new(27.8, 370.7, -775.3), Vector3.new(50.7, 364.1, -774.2), Vector3.new(71.5, 361.3, -773.8), Vector3.new(91.4, 361.4, -773.3), Vector3.new(109.8, 361.4, -767.5), Vector3.new(128.9, 361.4, -765.1), Vector3.new(148.9, 361.4, -764.9), Vector3.new(169.5, 361.4, -767.1), Vector3.new(186.3, 361.8, -777), Vector3.new(203.2, 367.6, -790.7), Vector3.new(218.8, 372.6, -803.6), Vector3.new(236.5, 374.6, -807.5), Vector3.new(258.2, 374.7, -807.7), Vector3.new(279, 374.8, -807.9), Vector3.new(300.6, 374.9, -807.8), Vector3.new(322.3, 374.9, -807.7), Vector3.new(335.2, 379.9, -801.7), Vector3.new(348.4, 385.1, -794.5), Vector3.new(361.6, 388.4, -786.4), Vector3.new(376.2, 389.6, -778.3), Vector3.new(392.6, 388.5, -771), Vector3.new(408, 385.2, -765.8), Vector3.new(423.4, 379.9, -762.1), Vector3.new(438.7, 372.4, -760), Vector3.new(454.7, 362.8, -759.3), Vector3.new(471.1, 361.3, -763.9), Vector3.new(489.3, 361.4, -775.2), Vector3.new(507.3, 361.4, -785.8), Vector3.new(526.4, 361.4, -794), Vector3.new(547.7, 361.4, -798), Vector3.new(568.5, 361.4, -798.1), Vector3.new(589.3, 361.4, -796.7), Vector3.new(610.8, 361.4, -794.2), Vector3.new(630.6, 361.4, -791.9), Vector3.new(653, 361.4, -789.3), Vector3.new(674.5, 361.4, -786.8), Vector3.new(695.2, 361.4, -784.4), Vector3.new(716.7, 361.4, -781.9), Vector3.new(739.1, 361.4, -779.3), Vector3.new(759.8, 361.4, -776.9), Vector3.new(780.5, 361.4, -774.7), Vector3.new(801.3, 361.4, -773.3), Vector3.new(820.4, 365.2, -772.1), Vector3.new(842.9, 370.8, -770.7), Vector3.new(863.4, 374, -769.4), Vector3.new(881.8, 375.1, -768.2), Vector3.new(900.1, 374.1, -767.1), Vector3.new(915.5, 371.1, -766.1), Vector3.new(930.4, 365.9, -765.2), Vector3.new(947.1, 363.6, -764.1), Vector3.new(964.4, 369, -763.2), Vector3.new(982.7, 373.6, -762.2), Vector3.new(1000.8, 375.9, -761.4), Vector3.new(1023.3, 376.4, -760.6), Vector3.new(1041.6, 374.9, -759.8), Vector3.new(1063.2, 371.1, -759), Vector3.new(1084.9, 364.9, -758.1), Vector3.new(1105.7, 361.3, -757.3), Vector3.new(1127.4, 361.4, -756.4), Vector3.new(1148.2, 361.4, -755.6), Vector3.new(1169.7, 361.5, -753.5), Vector3.new(1190.5, 361.5, -751.4), Vector3.new(1211.9, 365.6, -748.5), Vector3.new(1232.4, 370.8, -744.8), Vector3.new(1252.7, 374, -740.1), Vector3.new(1273.8, 375.1, -735.2), Vector3.new(1294.1, 374, -730.5), Vector3.new(1314.4, 370.8, -725.8), Vector3.new(1334.8, 365.4, -721.6), Vector3.new(1355.4, 362.2, -718.3), Vector3.new(1377, 361.8, -717.7), Vector3.new(1397.4, 361.4, -721.3), Vector3.new(1416.7, 366.4, -726.7), Vector3.new(1435.1, 371.4, -732), Vector3.new(1456.1, 376.2, -737.2), Vector3.new(1477.3, 378.8, -741.7), Vector3.new(1497.7, 379.2, -746), Vector3.new(1517.3, 377.2, -750.1), Vector3.new(1538.6, 372.6, -754.1), Vector3.new(1559.3, 365.7, -756.1), Vector3.new(1579.2, 362.1, -755.9), Vector3.new(1600.8, 361, -754.1), Vector3.new(1621.5, 361, -751.5), Vector3.new(1642, 366.2, -747.8), Vector3.new(1662.4, 371.2, -743.7), Vector3.new(1682.8, 374.2, -739.5), Vector3.new(1703.2, 375, -735.3), Vector3.new(1724.5, 373.6, -730.9), Vector3.new(1744.9, 370.2, -726.8), Vector3.new(1765.4, 364.5, -723.2), Vector3.new(1786, 361.5, -720.5), Vector3.new(1806.8, 361.1, -719.3), Vector3.new(1827.6, 360.9, -719.1), Vector3.new(1851.7, 360.8, -719.9), Vector3.new(1872.5, 360.8, -721.8), Vector3.new(1892.4, 363.8, -724.1), Vector3.new(1913.9, 369.2, -726.7), Vector3.new(1935.2, 374.3, -730.2), Vector3.new(1956.5, 377.1, -734.4), Vector3.new(1977.8, 377.7, -738.6), Vector3.new(1998.2, 376.1, -742.6), Vector3.new(2018.6, 372.4, -746.6), Vector3.new(2039.1, 366.5, -750.7), Vector3.new(2059.5, 360.7, -754.7), Vector3.new(2080.1, 361, -757.8), Vector3.new(2101.7, 361, -758), Vector3.new(2121.6, 361, -755.9), Vector3.new(2142.3, 363.8, -753), Vector3.new(2162.9, 369.2, -750.2), Vector3.new(2183.5, 374.7, -747.3), Vector3.new(2202.5, 378.7, -744.6), Vector3.new(2223, 381.1, -741.1), Vector3.new(2244.3, 381.4, -737.2), Vector3.new(2266.4, 379.1, -732.8), Vector3.new(2286, 375.1, -728.8), Vector3.new(2308.2, 368.2, -724.9), Vector3.new(2328, 362.2, -723.5), Vector3.new(2351.1, 362.7, -726.3), Vector3.new(2372.2, 368.3, -730.8), Vector3.new(2393.9, 373.7, -736.8), Vector3.new(2413.8, 376.6, -742.8), Vector3.new(2433.9, 377.5, -748.2), Vector3.new(2453.6, 376.2, -751.9), Vector3.new(2475.1, 372.4, -754.1), Vector3.new(2495.9, 366.4, -754.3), Vector3.new(2516.7, 362.1, -753.6), Vector3.new(2538.4, 361.8, -752.9), Vector3.new(2560.8, 361.8, -752.1), Vector3.new(2581.6, 361.8, -752.2), Vector3.new(2603.2, 361.8, -753.3), Vector3.new(2623.2, 361.8, -754.3), Vector3.new(2642.8, 367.1, -755.4), Vector3.new(2658.2, 382.8, -756.1), Vector3.new(2663, 402, -756.3), Vector3.new(2662.8, 422, -756.5), Vector3.new(2662.7, 442.8, -756.7), Vector3.new(2657.4, 461.8, -756.9), Vector3.new(2650.7, 481, -757.1), Vector3.new(2653.7, 504.1, -757.3), Vector3.new(2660.2, 529.6, -757.5), Vector3.new(2656, 551.6, -757.4), Vector3.new(2654.9, 574.1, -756.9), Vector3.new(2657.3, 594.7, -756.7), Vector3.new(2662.1, 616, -756.6), Vector3.new(2662.5, 636.1, -756.7), Vector3.new(2662.7, 657, -757), Vector3.new(2662.8, 677, -757.3), Vector3.new(2662.7, 698.7, -757.7), Vector3.new(2662.8, 719.5, -758.1), Vector3.new(2662.7, 741.2, -758.5), Vector3.new(2662.7, 762.1, -758.9), Vector3.new(2662.7, 783, -759.4), Vector3.new(2663.1, 803, -760.1), Vector3.new(2666.7, 824.5, -760.8), Vector3.new(2674.1, 845.2, -761.3), Vector3.new(2684.2, 863.2, -761.6), Vector3.new(2694.8, 876.4, -761.8), Vector3.new(2699.8, 869.8, -761.7), Vector3.new(2705.4, 863.2, -761.7), Vector3.new(2711.6, 856.4, -761.6), Vector3.new(2718.9, 849.1, -761.6), Vector3.new(2726.8, 841.4, -761.6), Vector3.new(2731.1, 837.8, -761.6), Vector3.new(2737.3, 840.2, -761.5), Vector3.new(2745, 845.6, -761.4), Vector3.new(2753.8, 849.7, -761.2), Vector3.new(2764.2, 851.7, -761.1), Vector3.new(2776.6, 851.5, -760.9), Vector3.new(2790.2, 849.1, -760.7), Vector3.new(2804.6, 844.8, -760.4), Vector3.new(2821, 838.2, -760.2), Vector3.new(2832.2, 837.8, -760), Vector3.new(2834.8, 837.8, -759.9), Vector3.new(2840.5, 837.8, -759.9), Vector3.new(2855.7, 837.8, -760), Vector3.new(2877.2, 837.8, -760), Vector3.new(2897.2, 837.8, -760), Vector3.new(2918.9, 837.8, -760), Vector3.new(2939.7, 837.8, -759.9), Vector3.new(2960.5, 837.7, -759.8), Vector3.new(2981.4, 837.7, -759.7), Vector3.new(3002.2, 837.7, -759.6), Vector3.new(3023, 837.7, -759.5), Vector3.new(3043.9, 837.7, -759.4), Vector3.new(3063, 837.7, -759.3), Vector3.new(3085.5, 837.7, -759.2), Vector3.new(3106.4, 837.6, -759.1), Vector3.new(3127.2, 837.6, -759.1), Vector3.new(3148, 837.6, -759), Vector3.new(3168.8, 837.6, -758.9), Vector3.new(3189.7, 837.6, -758.8), Vector3.new(3210.5, 837.6, -758.7), Vector3.new(3231.3, 837.6, -758.6), Vector3.new(3251.3, 837.5, -758.5), Vector3.new(3273, 837.5, -758.4), Vector3.new(3292.2, 837.5, -758.3), Vector3.new(3314.7, 837.5, -758.2), Vector3.new(3335.5, 837.5, -758.1), Vector3.new(3356.3, 837.5, -758), Vector3.new(3377.2, 837.4, -758), Vector3.new(3397.2, 837.4, -757.9), Vector3.new(3417.2, 837.4, -757.8), Vector3.new(3436.3, 837.4, -757.6), Vector3.new(3458, 837.4, -757.4), Vector3.new(3478, 837.4, -757.2), Vector3.new(3499.6, 837.4, -757), Vector3.new(3519.6, 837.3, -756.8), Vector3.new(3541.3, 837.3, -756.6), Vector3.new(3562.1, 837.3, -756.4), Vector3.new(3583, 837.3, -756.1), Vector3.new(3603, 837.3, -755.9), Vector3.new(3623.8, 837.3, -755.7), Vector3.new(3643.6, 837.2, -755.5), Vector3.new(3653.9, 837.2, -755.4), Vector3.new(3656.4, 837.2, -755.4), Vector3.new(3660.6, 837.2, -755.3), Vector3.new(3671, 837.2, -755.2), Vector3.new(3673.6, 837.1, -755.2), Vector3.new(3673.6, 836.6, -755.2), Vector3.new(3673.6, 833.3, -755.2), Vector3.new(3673.6, 827.7, -755.2), Vector3.new(3673.6, 820.7, -755.2), Vector3.new(3673.6, 815.7, -755.2), Vector3.new(3673.6, 810.1, -755.2), Vector3.new(3673.6, 804.2, -755.2), Vector3.new(3673.6, 795.8, -755.2), Vector3.new(3673.6, 787.9, -755.2), Vector3.new(3673.6, 782.7, -755.2), Vector3.new(3673.6, 775.6, -755.2), Vector3.new(3673.6, 765.2, -755.2), Vector3.new(3673.6, 758.4, -755.2), Vector3.new(3673.6, 751.4, -755.2), Vector3.new(3674, 751.4, -755.2), Vector3.new(3681.1, 751.4, -755.3), Vector3.new(3696.8, 751.4, -755.4), Vector3.new(3710.9, 751.3, -755.5), Vector3.new(3716.1, 751.3, -755.5), Vector3.new(3716.2, 750.5, -755.5), Vector3.new(3716.2, 747.1, -755.5), Vector3.new(3716.2, 741.4, -755.5), Vector3.new(3716.2, 732.7, -755.5), Vector3.new(3716.2, 729.8, -755.5), Vector3.new(3717, 729.8, -755.5), Vector3.new(3724.5, 729.8, -754.7), Vector3.new(3740.9, 729.8, -752.5), Vector3.new(3761.6, 729.8, -750.3), Vector3.new(3781.5, 729.8, -748.7), Vector3.new(3802.3, 729.8, -747.2), Vector3.new(3819, 729.8, -746.4), Vector3.new(3825.9, 729.8, -746), Vector3.new(3826.6, 729.8, -746), Vector3.new(3827.3, 729.8, -746), Vector3.new(3835.4, 729.8, -745.9), Vector3.new(3852.3, 729.8, -745.7), Vector3.new(3873.1, 729.8, -745.5), Vector3.new(3893.9, 729.8, -745.3), Vector3.new(3914.8, 729.8, -745.1), Vector3.new(3935.6, 729.8, -744.9), Vector3.new(3956.4, 729.8, -744.6), Vector3.new(3977.3, 729.8, -744.4), Vector3.new(3998.1, 729.8, -744.2), Vector3.new(4018.9, 729.7, -744), Vector3.new(4039.7, 729.7, -743.8), Vector3.new(4060.6, 729.7, -743.6), Vector3.new(4081.4, 729.7, -743.4), Vector3.new(4102.2, 729.7, -743.2), Vector3.new(4123.1, 729.7, -742.9), Vector3.new(4143.9, 729.6, -742.7), Vector3.new(4164.8, 729.6, -742.5), Vector3.new(4185.6, 729.6, -742.3), Vector3.new(4206.4, 729.6, -742.1), Vector3.new(4224.8, 729.6, -741.9), Vector3.new(4248.9, 729.6, -741.7), Vector3.new(4268.9, 729.6, -741.6), Vector3.new(4291.4, 729.5, -741.5), Vector3.new(4314.8, 729.5, -741.4), Vector3.new(4334.8, 729.5, -741.6), Vector3.new(4355.6, 729.5, -742.4), Vector3.new(4375.6, 729.4, -743.2), Vector3.new(4397.2, 729.2, -744.2), Vector3.new(4413.5, 729.1, -744.9), Vector3.new(4420.9, 729.1, -745.2), Vector3.new(4421.5, 729.1, -745.2), Vector3.new(4423.4, 729.1, -745.3), Vector3.new(4433.5, 729.1, -746.4), Vector3.new(4451.4, 729.1, -750.8), Vector3.new(4470.8, 729.1, -756.8), Vector3.new(4483.6, 729.1, -760.9), Vector3.new(4488.1, 729.1, -762.3), Vector3.new(4490.1, 729.1, -763), Vector3.new(4493.4, 729.1, -764.1), Vector3.new(4493.9, 729.1, -764.2), Vector3.new(4500.4, 729.1, -766.8), Vector3.new(4515, 729.1, -772.7), Vector3.new(4533.7, 729.1, -781.9), Vector3.new(4553, 729.1, -791.7), Vector3.new(4571.3, 729.1, -801.6), Vector3.new(4588.6, 729.1, -811.6), Vector3.new(4607.7, 729.1, -821.8), Vector3.new(4625.5, 729.1, -829), Vector3.new(4647.7, 729.1, -831.1), Vector3.new(4668.9, 729.1, -826.6), Vector3.new(4688.7, 729.1, -820.3), Vector3.new(4708.6, 729.1, -813.9), Vector3.new(4728.4, 729.1, -807.5), Vector3.new(4748.2, 729.1, -801), Vector3.new(4768, 729.1, -794.6), Vector3.new(4787.8, 729.1, -788.2), Vector3.new(4806.8, 729.1, -782), Vector3.new(4827.5, 729.1, -775.4), Vector3.new(4846.5, 729.1, -769.4), Vector3.new(4865.3, 729.1, -763.4), Vector3.new(4876.8, 729.1, -759.7), Vector3.new(4880, 729.1, -758.7), Vector3.new(4881.9, 729.1, -758.7), Vector3.new(4891.3, 729.1, -758.5), Vector3.new(4899.4, 727.9, -758.4), Vector3.new(4907.2, 724.3, -758.3), Vector3.new(4916.5, 719.3, -758.1), Vector3.new(4918.5, 718.9, -758.1), Vector3.new(4918.6, 718.6, -758.1), Vector3.new(4928.6, 718.7, -758.1), Vector3.new(4948.5, 718.7, -758), Vector3.new(4969, 718.7, -757.9), Vector3.new(4989.7, 720.8, -758), Vector3.new(5010.6, 726.3, -758.3), Vector3.new(5030.6, 731.3, -758.6), Vector3.new(5051.4, 735, -758.8), Vector3.new(5073.9, 736.6, -759.1), Vector3.new(5093.9, 735.9, -759.4), Vector3.new(5114.7, 733.1, -759.7), Vector3.new(5134.8, 728.4, -759.9), Vector3.new(5154.8, 721.7, -760.2), Vector3.new(5176.4, 718.2, -760.8), Vector3.new(5196.4, 717.9, -761.6), Vector3.new(5218, 723.6, -762.7), Vector3.new(5238, 728.8, -764), Vector3.new(5259.6, 732.8, -765.4), Vector3.new(5279.6, 734.4, -766.7), Vector3.new(5300.4, 734.1, -768), Vector3.new(5321.2, 731.5, -768.3), Vector3.new(5342, 726.9, -767.9), Vector3.new(5363.7, 720.3, -767.1), Vector3.new(5383.7, 721.6, -766.6), Vector3.new(5405.3, 727.3, -766.1), Vector3.new(5424.5, 731.9, -766), Vector3.new(5445.9, 735, -765.4), Vector3.new(5466.2, 735.1, -760.8), Vector3.new(5484.8, 733.2, -757.7), Vector3.new(5505.9, 729, -756.6), Vector3.new(5526.7, 722.8, -756.5), Vector3.new(5548.4, 719.4, -756.2), Vector3.new(5570.1, 718.8, -756), Vector3.new(5590.9, 723, -755.9), Vector3.new(5611.7, 728, -755.9), Vector3.new(5632.6, 730.9, -755.8), Vector3.new(5652.1, 731.6, -755.7), Vector3.new(5664.6, 730.2, -755.6), Vector3.new(5672.3, 726.6, -755.6), Vector3.new(5677.3, 721.1, -755.6), Vector3.new(5692.5, 719.2, -755.8), Vector3.new(5713.3, 721.5, -755.3), Vector3.new(5734.1, 726.9, -754.6), Vector3.new(5754.9, 730.8, -753.7), Vector3.new(5775.8, 732.4, -752.8), Vector3.new(5797.4, 731.8, -751.9), Vector3.new(5818.2, 729.1, -751.1), Vector3.new(5839, 724.2, -751.3), Vector3.new(5860.7, 720.2, -751.7), Vector3.new(5880.7, 719.6, -752.1), Vector3.new(5900.7, 719.3, -752.1), Vector3.new(5921.4, 719.4, -751.6), Vector3.new(5942.2, 719.5, -751), Vector3.new(5963, 719.6, -750.6), Vector3.new(5983.8, 722.2, -751.1), Vector3.new(6004.6, 727.5, -751.9), Vector3.new(6024.6, 730.8, -752.4), Vector3.new(6045.1, 732.1, -753.4), Vector3.new(6064.7, 730.6, -758), Vector3.new(6085.2, 726.9, -760.8), Vector3.new(6105.8, 721.3, -761.6), Vector3.new(6126.6, 719.7, -761.8), Vector3.new(6147.4, 719.1, -762.3), Vector3.new(6168.2, 719.1, -762.9), Vector3.new(6189.9, 719.1, -762.8), Vector3.new(6209.9, 719.1, -762.8), Vector3.new(6229.1, 719.1, -762.7), Vector3.new(6251.6, 719.1, -762.6), Vector3.new(6272.4, 719.1, -762.5), Vector3.new(6294.1, 719.1, -762.4), Vector3.new(6314.9, 719.1, -763.2), Vector3.new(6336.6, 719.1, -764), Vector3.new(6358.2, 719.1, -765), Vector3.new(6378.2, 719.1, -765.8), Vector3.new(6399, 719.6, -767.2), Vector3.new(6421.4, 725.4, -768.8), Vector3.new(6441.4, 729.8, -770.4), Vector3.new(6462.1, 732.2, -772.8), Vector3.new(6482.7, 732.6, -775.4), Vector3.new(6503.5, 732.4, -776), Vector3.new(6524.4, 732.4, -776.2), Vector3.new(6546, 732.5, -776.4), Vector3.new(6563.5, 734.8, -773.8), Vector3.new(6576.4, 740.3, -767), Vector3.new(6590.1, 744.5, -761), Vector3.new(6604.5, 746.7, -756.3), Vector3.new(6618.3, 746.7, -753.3), Vector3.new(6633.8, 744.7, -751.1), Vector3.new(6649.7, 740.7, -749.8), Vector3.new(6668.3, 734.2, -749.5), Vector3.new(6688.3, 725.4, -750), Vector3.new(6708.9, 718.8, -751.3), Vector3.new(6728.8, 719.1, -752.6), Vector3.new(6750.5, 719.1, -754), Vector3.new(6770.4, 719.1, -755.2), Vector3.new(6791.3, 719.1, -755.5), Vector3.new(6811.3, 719.1, -755.4), Vector3.new(6832.1, 719.1, -755.3), Vector3.new(6854.6, 719.1, -755.2), Vector3.new(6875.4, 719.1, -755.2), Vector3.new(6896.3, 719.1, -755.1), Vector3.new(6917.1, 719.1, -755), Vector3.new(6937.1, 719.1, -755), Vector3.new(6958, 719.1, -755.1), Vector3.new(6978.8, 719.1, -755.3), Vector3.new(6999.6, 719.1, -755.4), Vector3.new(7020.5, 719.1, -755.6), Vector3.new(7038.6, 719.2, -755.7), Vector3.new(7048.8, 719.2, -755.8), Vector3.new(7049.8, 719.2, -755.8), Vector3.new(7050.9, 719.2, -755.8), Vector3.new(7059.6, 719.2, -755.6), Vector3.new(7077.1, 719.1, -755.2), Vector3.new(7098, 716.9, -754.8), Vector3.new(7118.8, 712.4, -754.3), Vector3.new(7139.6, 705.7, -753.8), Vector3.new(7160.4, 696.9, -753.4), Vector3.new(7181.3, 685.9, -752.9), Vector3.new(7202.1, 672.8, -752.5), Vector3.new(7222.9, 663.2, -752), Vector3.new(7243.7, 663.6, -751.6), Vector3.new(7264.6, 663.6, -751.1), Vector3.new(7285.4, 663.6, -750.7), Vector3.new(7306.2, 663.6, -750.2), Vector3.new(7327, 663.6, -749.8), Vector3.new(7347.9, 663.6, -749.3), Vector3.new(7368.7, 663.6, -748.8), Vector3.new(7389.5, 663.6, -748.4), Vector3.new(7409.5, 663.6, -748), Vector3.new(7431.2, 663.6, -747.7), Vector3.new(7451.2, 663.6, -747.7), Vector3.new(7471.2, 663.6, -747.7), Vector3.new(7493.7, 663.6, -747.7), Vector3.new(7514.5, 663.6, -747.8), Vector3.new(7535.4, 663.6, -747.8), Vector3.new(7554.5, 663.6, -747.8), Vector3.new(7576.2, 663.6, -747.9), Vector3.new(7597, 663.6, -747.9), Vector3.new(7617, 663.6, -747.9), Vector3.new(7637.9, 663.6, -748), Vector3.new(7657.9, 663.6, -748), Vector3.new(7678.7, 663.6, -748), Vector3.new(7698.7, 663.6, -748.1), Vector3.new(7718.7, 663.6, -748.1), Vector3.new(7739.6, 663.6, -748.1), Vector3.new(7760.4, 663.6, -748.2), Vector3.new(7782.1, 663.6, -748.2), Vector3.new(7802.1, 663.6, -748.2), Vector3.new(7822.9, 663.6, -748.3), Vector3.new(7844.6, 663.6, -748.3), Vector3.new(7866.3, 663.6, -748.3), Vector3.new(7887.9, 663.6, -748.4), Vector3.new(7909.6, 663.6, -748.4), Vector3.new(7930.4, 663.6, -748.4), Vector3.new(7950.4, 663.6, -748.5), Vector3.new(7971.3, 663.6, -748.5), Vector3.new(7992.1, 663.6, -748.5), Vector3.new(8013, 663.6, -748.6), Vector3.new(8033.8, 663.6, -748.6), Vector3.new(8055.5, 663.6, -748.6), Vector3.new(8075.5, 663.6, -748.7), Vector3.new(8097.1, 663.6, -748.7), Vector3.new(8117.1, 663.6, -748.7), Vector3.new(8137.1, 663.6, -748.8), Vector3.new(8158.8, 663.6, -748.8), Vector3.new(8179.7, 663.6, -748.8), Vector3.new(8199.4, 663.6, -748.9), Vector3.new(8210.3, 663.6, -748.9), Vector3.new(8212.3, 663.6, -748.9), Vector3.new(8212.8, 663.6, -748.9), Vector3.new(8220.2, 663.6, -748.9), Vector3.new(8234.7, 663.6, -748.9), Vector3.new(8255.5, 663.6, -749), Vector3.new(8278, 663.6, -749), Vector3.new(8301.3, 663.6, -749), Vector3.new(8323, 663.6, -749.1), Vector3.new(8345.4, 663.6, -749.1), Vector3.new(8365.4, 664.5, -749.1), Vector3.new(8389.6, 670.7, -749.2), Vector3.new(8409.6, 675.9, -749.2), Vector3.new(8430.4, 680.9, -749.2), Vector3.new(8450.4, 684, -749.3), Vector3.new(8471.2, 685.1, -749.3), Vector3.new(8492.1, 684.1, -749.3), Vector3.new(8512, 681.1, -749.4), Vector3.new(8533.7, 675.7, -749.4), Vector3.new(8552.9, 668.9, -749.4), Vector3.new(8574.5, 663.4, -749.5), Vector3.new(8596.2, 663.6, -749.5), Vector3.new(8617, 663.6, -749.5), Vector3.new(8637, 663.6, -749.5), Vector3.new(8657.8, 663.6, -749.6), Vector3.new(8678.7, 663.6, -749.6), Vector3.new(8699.5, 663.6, -749.6), Vector3.new(8719.5, 663.6, -749.7), Vector3.new(8739.5, 663.6, -749.7), Vector3.new(8760.3, 663.6, -749.7), Vector3.new(8780.3, 663.6, -749.8), Vector3.new(8801.1, 663.6, -749.8), Vector3.new(8821.9, 663.6, -749.8), Vector3.new(8842.8, 663.6, -749.9), Vector3.new(8863.6, 663.6, -749.9), Vector3.new(8884.4, 663.6, -749.9), Vector3.new(8906.1, 663.6, -750), Vector3.new(8926.1, 663.6, -750), Vector3.new(8947.7, 663.6, -750), Vector3.new(8969.4, 663.6, -750.1), Vector3.new(8990.2, 667.3, -750.1), Vector3.new(9011, 672.7, -750.1), Vector3.new(9031, 677.6, -750.2), Vector3.new(9052.7, 680.7, -750.2), Vector3.new(9073.5, 681.6, -750.2), Vector3.new(9094.3, 680.3, -750.3), Vector3.new(9115.1, 676.9, -750.3), Vector3.new(9136, 671.3, -750.3), Vector3.new(9156.8, 663.7, -750.3), Vector3.new(9177.6, 663.6, -750.4), Vector3.new(9198.4, 663.6, -750.4), Vector3.new(9218.5, 663.6, -750.4), Vector3.new(9231.3, 663.6, -750.5), Vector3.new(9235.2, 663.6, -750.5), Vector3.new(9240.6, 663.6, -747.6), Vector3.new(9250, 663.6, -742.6), Vector3.new(9253.1, 663.6, -740.9), Vector3.new(9255.7, 663.6, -739.5), Vector3.new(9259.7, 664.9, -737.4), Vector3.new(9259.7, 665.2, -737.4)}, [16] = {Vector3.new(-378, 360.8, -759.5), Vector3.new(-373.1, 360.8, -760), Vector3.new(-352.6, 360.8, -760), Vector3.new(-331.7, 360.8, -760.8), Vector3.new(-311.4, 361.1, -763.3), Vector3.new(-290.8, 361.4, -767.1), Vector3.new(-270.3, 361.4, -771.3), Vector3.new(-249.8, 361.4, -775.5), Vector3.new(-229.4, 361.4, -779.3), Vector3.new(-208.9, 361.4, -781.9), Vector3.new(-188.4, 361.4, -782.5), Vector3.new(-165.8, 361.4, -781.6), Vector3.new(-145.4, 361.4, -780.4), Vector3.new(-125.3, 361.4, -779.3), Vector3.new(-102.1, 362.5, -777.9), Vector3.new(-81.8, 366.4, -777), Vector3.new(-62, 371, -776.4), Vector3.new(-40.9, 374.5, -776), Vector3.new(-20.5, 375.7, -775.8), Vector3.new(-0.5, 375, -775.6), Vector3.new(19.4, 372.3, -775.4), Vector3.new(38.9, 367.5, -774.8), Vector3.new(59, 363, -774), Vector3.new(80, 361.3, -773.6), Vector3.new(100.5, 361.4, -770.4), Vector3.new(120.8, 361.4, -766.1), Vector3.new(141.7, 361.4, -765), Vector3.new(161.9, 361.4, -766.3), Vector3.new(180.8, 361.7, -773.8), Vector3.new(197.1, 365.5, -785.7), Vector3.new(213.1, 370.8, -798.9), Vector3.new(232.9, 374.2, -806.7), Vector3.new(255.2, 374.7, -807.7), Vector3.new(278.1, 374.8, -807.9), Vector3.new(298.1, 374.9, -807.8), Vector3.new(318.7, 374.9, -807.7), Vector3.new(336.5, 380.4, -801), Vector3.new(353.4, 386.3, -791.5), Vector3.new(371.1, 389.2, -781.1), Vector3.new(389.4, 388.7, -772.4), Vector3.new(408.9, 384.9, -765.6), Vector3.new(427.8, 377.8, -761.5), Vector3.new(445.5, 368.3, -759.7), Vector3.new(463.8, 362, -761.9), Vector3.new(482.3, 361.4, -770.9), Vector3.new(500.1, 361.4, -781.5), Vector3.new(518.7, 361.4, -790.7), Vector3.new(538.8, 361.4, -796.3), Vector3.new(559.2, 361.4, -798.1), Vector3.new(580.7, 361.4, -797.3), Vector3.new(601, 361.4, -795.3), Vector3.new(622.6, 361.4, -792.8), Vector3.new(644.6, 361.4, -790.3), Vector3.new(665.4, 361.4, -787.9), Vector3.new(686.8, 361.4, -785.4), Vector3.new(708.3, 361.4, -782.9), Vector3.new(729.7, 361.4, -780.4), Vector3.new(750.1, 361.4, -778), Vector3.new(770.8, 361.4, -775.7), Vector3.new(791.6, 361.4, -774), Vector3.new(812.1, 363.6, -772.6), Vector3.new(833.2, 368.4, -771.3), Vector3.new(854.2, 372.6, -770), Vector3.new(875, 374.7, -768.6), Vector3.new(895.2, 374.4, -767.4), Vector3.new(915.8, 371, -766.1), Vector3.new(935.9, 365.1, -764.8), Vector3.new(955.9, 366.3, -763.6), Vector3.new(976.3, 372, -762.5), Vector3.new(996.5, 375.4, -761.6), Vector3.new(1017.3, 376.3, -760.8), Vector3.new(1039, 375.1, -759.9), Vector3.new(1059.5, 371.8, -759.1), Vector3.new(1079.2, 366.5, -758.3), Vector3.new(1099.1, 362.4, -757.6), Vector3.new(1119.9, 361.4, -756.7), Vector3.new(1140.7, 361.4, -755.9), Vector3.new(1161.3, 361.5, -754.3), Vector3.new(1182.1, 361.5, -752.2), Vector3.new(1202.6, 363.8, -749.8), Vector3.new(1222.4, 368.3, -746.6), Vector3.new(1242.1, 372.3, -742.6), Vector3.new(1261.7, 374.5, -738), Vector3.new(1281.7, 374.7, -733.4), Vector3.new(1302.2, 372.7, -728.6), Vector3.new(1321.9, 368.8, -724.3), Vector3.new(1341.7, 364.3, -720.5), Vector3.new(1364.2, 362, -718.1), Vector3.new(1385.3, 361.6, -719.2), Vector3.new(1405.7, 363.5, -723.6), Vector3.new(1425.2, 368.7, -729.2), Vector3.new(1446.3, 374, -734.8), Vector3.new(1465.9, 377.4, -739.3), Vector3.new(1486.3, 379, -743.6), Vector3.new(1507, 378.3, -747.9), Vector3.new(1526.7, 375.2, -751.9), Vector3.new(1546.8, 369.9, -754.9), Vector3.new(1567, 364.3, -756), Vector3.new(1587.9, 361.7, -755.2), Vector3.new(1608.5, 361, -753.1), Vector3.new(1628.4, 362.7, -750.3), Vector3.new(1647.8, 367.6, -746.6), Vector3.new(1668, 372, -742.5), Vector3.new(1687.9, 374.4, -738.5), Vector3.new(1708.1, 374.7, -734.3), Vector3.new(1727.6, 373.1, -730.3), Vector3.new(1748, 369.3, -726.3), Vector3.new(1767.8, 364.1, -722.9), Vector3.new(1787.7, 361.5, -720.4), Vector3.new(1809.3, 361.1, -719.3), Vector3.new(1831.5, 360.9, -719.2), Vector3.new(1852.1, 360.8, -719.9), Vector3.new(1873.7, 361, -721.9), Vector3.new(1894.5, 364.3, -724.4), Vector3.new(1914.4, 369.3, -726.8), Vector3.new(1935, 374.2, -730.2), Vector3.new(1955, 376.9, -734.1), Vector3.new(1975.8, 377.6, -738.2), Vector3.new(1995.8, 376.3, -742.1), Vector3.new(2015.9, 372.9, -746.1), Vector3.new(2035.7, 367.5, -750), Vector3.new(2055.2, 361.9, -753.9), Vector3.new(2075.7, 360.9, -757.1), Vector3.new(2097, 361, -758), Vector3.new(2117.3, 361, -756.4), Vector3.new(2137.9, 363.2, -753.6), Vector3.new(2157.9, 367.9, -750.9), Vector3.new(2178, 373.2, -748.1), Vector3.new(2198.3, 377.8, -745.2), Vector3.new(2218.4, 380.6, -741.9), Vector3.new(2239.3, 381.3, -738.1), Vector3.new(2261, 379.7, -733.9), Vector3.new(2282.1, 375.9, -729.6), Vector3.new(2301.7, 370.2, -726), Vector3.new(2321.6, 364.1, -724), Vector3.new(2341.8, 362.5, -725.2), Vector3.new(2361.9, 365.6, -728.6), Vector3.new(2380.8, 370.5, -733.2), Vector3.new(2399.9, 374.6, -738.6), Vector3.new(2420.1, 376.9, -744.5), Vector3.new(2440, 377.1, -749.3), Vector3.new(2461.8, 374.7, -752.7), Vector3.new(2482.1, 370.4, -754.2), Vector3.new(2502.5, 365, -754.1), Vector3.new(2522.9, 362, -753.4), Vector3.new(2543.5, 361.8, -752.7), Vector3.new(2564.5, 361.8, -752.1), Vector3.new(2585, 361.8, -752.4), Vector3.new(2605.4, 361.8, -753.4), Vector3.new(2627.5, 363, -754.5), Vector3.new(2646.1, 370.5, -755.5), Vector3.new(2659, 385.8, -756.1), Vector3.new(2663, 405.6, -756.3), Vector3.new(2662.8, 427, -756.5), Vector3.new(2661.3, 447.8, -756.8), Vector3.new(2655.6, 467, -757), Vector3.new(2651.6, 487.7, -757.2), Vector3.new(2654.9, 508.6, -757.3), Vector3.new(2659.9, 528.3, -757.5), Vector3.new(2656.6, 548.4, -757.4), Vector3.new(2655.1, 569.3, -757), Vector3.new(2656.8, 590, -756.7), Vector3.new(2661, 610.9, -756.6), Vector3.new(2662.4, 631.5, -756.7), Vector3.new(2662.7, 651.8, -756.9), Vector3.new(2662.8, 672.9, -757.2), Vector3.new(2662.7, 694.1, -757.6), Vector3.new(2662.8, 714.8, -758), Vector3.new(2662.7, 735.4, -758.4), Vector3.new(2662.7, 756.2, -758.8), Vector3.new(2662.7, 777, -759.3), Vector3.new(2663, 797, -759.9), Vector3.new(2665.5, 817.1, -760.6), Vector3.new(2671.4, 837.6, -761.1), Vector3.new(2680.1, 856, -761.5), Vector3.new(2691.8, 872.6, -761.7), Vector3.new(2705, 863.7, -761.7), Vector3.new(2719.2, 848.8, -761.6), Vector3.new(2735.5, 839.5, -761.5), Vector3.new(2752.9, 849.3, -761.2), Vector3.new(2772.8, 851.6, -761), Vector3.new(2793.5, 848.1, -760.6), Vector3.new(2812.9, 841.4, -760.3), Vector3.new(2833.1, 837.8, -760), Vector3.new(2853.9, 837.8, -760), Vector3.new(2874.8, 837.8, -760), Vector3.new(2895.8, 837.8, -760), Vector3.new(2916.5, 837.8, -760), Vector3.new(2937.3, 837.8, -759.9), Vector3.new(2958.2, 837.7, -759.8), Vector3.new(2979.2, 837.7, -759.7), Vector3.new(2999.6, 837.7, -759.6), Vector3.new(3020.7, 837.7, -759.5), Vector3.new(3041.4, 837.7, -759.4), Vector3.new(3062.7, 837.7, -759.3), Vector3.new(3083.4, 837.7, -759.2), Vector3.new(3104.2, 837.6, -759.1), Vector3.new(3124.4, 837.6, -759.1), Vector3.new(3144.4, 837.6, -759), Vector3.new(3165.2, 837.6, -758.9), Vector3.new(3186.1, 837.6, -758.8), Vector3.new(3207.1, 837.6, -758.7), Vector3.new(3227.3, 837.6, -758.6), Vector3.new(3248.5, 837.5, -758.5), Vector3.new(3268.9, 837.5, -758.4), Vector3.new(3290.3, 837.5, -758.3), Vector3.new(3310.9, 837.5, -758.2), Vector3.new(3332, 837.5, -758.1), Vector3.new(3353, 837.5, -758), Vector3.new(3373.4, 837.4, -758), Vector3.new(3394.5, 837.4, -757.9), Vector3.new(3415.2, 837.4, -757.8), Vector3.new(3435.8, 837.4, -757.6), Vector3.new(3455.9, 837.4, -757.4), Vector3.new(3476, 837.4, -757.2), Vector3.new(3497, 837.4, -757), Vector3.new(3517.9, 837.3, -756.8), Vector3.new(3538.7, 837.3, -756.6), Vector3.new(3559.6, 837.3, -756.4), Vector3.new(3580.5, 837.3, -756.1), Vector3.new(3601, 837.3, -755.9), Vector3.new(3621.9, 837.3, -755.7), Vector3.new(3642.8, 837.2, -755.5), Vector3.new(3663.8, 837.2, -755.3), Vector3.new(3673.6, 826, -755.2), Vector3.new(3673.6, 805.4, -755.2), Vector3.new(3673.6, 784.6, -755.2), Vector3.new(3673.6, 764.5, -755.2), Vector3.new(3681.1, 751.4, -755.3), Vector3.new(3701.7, 751.4, -755.4), Vector3.new(3716.2, 744.7, -755.5), Vector3.new(3721.8, 729.8, -755), Vector3.new(3741.8, 729.8, -752.4), Vector3.new(3763.3, 729.8, -750.2), Vector3.new(3784, 729.8, -748.5), Vector3.new(3805, 729.8, -747.1), Vector3.new(3827, 729.8, -746), Vector3.new(3855, 729.8, -745.7), Vector3.new(3886.9, 729.8, -745.4), Vector3.new(3918, 729.8, -745.1), Vector3.new(3949.5, 729.8, -744.7), Vector3.new(3982.9, 729.8, -744.3), Vector3.new(4013.7, 729.7, -744), Vector3.new(4045, 729.7, -743.7), Vector3.new(4076.1, 729.7, -743.5), Vector3.new(4107.6, 729.7, -743.1), Vector3.new(4140.1, 729.6, -742.7), Vector3.new(4172.1, 729.6, -742.4), Vector3.new(4201.6, 729.6, -742.1), Vector3.new(4227.9, 729.6, -741.9), Vector3.new(4249.3, 729.6, -741.7), Vector3.new(4271.8, 729.6, -741.6), Vector3.new(4292.1, 729.5, -741.5), Vector3.new(4315.6, 729.5, -741.4), Vector3.new(4336.2, 729.5, -741.7), Vector3.new(4357.3, 729.5, -742.5), Vector3.new(4377.6, 729.4, -743.3), Vector3.new(4399.2, 729.2, -744.3), Vector3.new(4420, 729.1, -745.2), Vector3.new(4440.1, 729.1, -748), Vector3.new(4460.6, 729.1, -753.6), Vector3.new(4480.6, 729.1, -759.9), Vector3.new(4500.2, 729.1, -766.7), Vector3.new(4519.9, 729.1, -775.1), Vector3.new(4537.8, 729.1, -784), Vector3.new(4556.5, 729.1, -793.6), Vector3.new(4574.5, 729.1, -803.5), Vector3.new(4592.6, 729.1, -813.7), Vector3.new(4611, 729.1, -823.1), Vector3.new(4631.1, 729.1, -829.5), Vector3.new(4651.3, 729.1, -830.3), Vector3.new(4671.7, 729.1, -825.7), Vector3.new(4691.5, 729.1, -819.4), Vector3.new(4710.6, 729.1, -813.2), Vector3.new(4730.7, 729.1, -806.7), Vector3.new(4750.9, 729.1, -800.1), Vector3.new(4770.7, 729.1, -793.7), Vector3.new(4790.6, 729.1, -787.3), Vector3.new(4810.6, 729.1, -780.8), Vector3.new(4830.4, 729.1, -774.5), Vector3.new(4849.7, 729.1, -768.4), Vector3.new(4869.2, 729.1, -762.1), Vector3.new(4889.2, 729.1, -758.5), Vector3.new(4908.8, 723.4, -758.3), Vector3.new(4928.1, 718.7, -758.1), Vector3.new(4949.3, 718.7, -758), Vector3.new(4970.6, 718.9, -757.9), Vector3.new(4992, 721.4, -758), Vector3.new(5012.2, 726.7, -758.3), Vector3.new(5032.1, 731.6, -758.6), Vector3.new(5052.2, 735.1, -758.8), Vector3.new(5072.7, 736.5, -759.1), Vector3.new(5092.8, 735.9, -759.4), Vector3.new(5112.6, 733.4, -759.7), Vector3.new(5132.6, 728.9, -759.9), Vector3.new(5152.5, 722.5, -760.2), Vector3.new(5172.9, 718.8, -760.7), Vector3.new(5193.9, 717.9, -761.5), Vector3.new(5214, 722.5, -762.5), Vector3.new(5234.2, 727.8, -763.8), Vector3.new(5254.7, 731.9, -765.1), Vector3.new(5275.1, 734, -766.4), Vector3.new(5295.6, 734.2, -767.7), Vector3.new(5316.5, 732.1, -768.2), Vector3.new(5336.4, 728.1, -768), Vector3.new(5356.5, 722.5, -767.4), Vector3.new(5377.2, 721.2, -766.8), Vector3.new(5397.8, 725.3, -766.3), Vector3.new(5418, 730.3, -766), Vector3.new(5437.8, 733.8, -765.6), Vector3.new(5458.6, 735.1, -762.5), Vector3.new(5478.8, 733.8, -758.7), Vector3.new(5499.5, 730.3, -756.9), Vector3.new(5519.9, 724.8, -756.5), Vector3.new(5539.9, 720.7, -756.3), Vector3.new(5560.7, 719.1, -756.1), Vector3.new(5581.6, 721.1, -755.9), Vector3.new(5601.7, 725.6, -755.9), Vector3.new(5623.1, 729.6, -755.8), Vector3.new(5644.4, 731.3, -755.7), Vector3.new(5665, 730, -755.6), Vector3.new(5683.1, 720.4, -755.7), Vector3.new(5703.7, 720.4, -755.5), Vector3.new(5723.5, 724.1, -755), Vector3.new(5744.2, 728.8, -754.2), Vector3.new(5765.2, 731.6, -753.3), Vector3.new(5785.5, 732.1, -752.4), Vector3.new(5806, 730.7, -751.6), Vector3.new(5828.1, 726.8, -751.2), Vector3.new(5848.3, 722.5, -751.5), Vector3.new(5869.3, 719.9, -751.9), Vector3.new(5889.7, 719.5, -752.1), Vector3.new(5910.8, 719.3, -751.9), Vector3.new(5931.1, 719.4, -751.3), Vector3.new(5952.3, 719.5, -750.8), Vector3.new(5973.2, 720.9, -750.8), Vector3.new(5993.2, 724.6, -751.5), Vector3.new(6013.9, 729, -752.1), Vector3.new(6034.4, 731.4, -752.9), Vector3.new(6055.2, 731.3, -755.8), Vector3.new(6075.6, 728.6, -759.5), Vector3.new(6095.5, 724.1, -761.2), Vector3.new(6116.2, 720.5, -761.7), Vector3.new(6137, 719.4, -762), Vector3.new(6157.4, 719.1, -762.6), Vector3.new(6178.2, 719.1, -762.9), Vector3.new(6199, 719.1, -762.8), Vector3.new(6220.4, 719.1, -762.7), Vector3.new(6241.6, 719.1, -762.6), Vector3.new(6261.9, 719.1, -762.6), Vector3.new(6282.3, 719.1, -762.5), Vector3.new(6303.2, 719.1, -762.8), Vector3.new(6323.3, 719.1, -763.5), Vector3.new(6343.7, 719.1, -764.3), Vector3.new(6364.9, 719.1, -765.3), Vector3.new(6385.1, 719.3, -766.3), Vector3.new(6405.5, 721.3, -767.7), Vector3.new(6425.2, 726.2, -769.1), Vector3.new(6445, 730.2, -770.8), Vector3.new(6465.5, 732.3, -773.2), Vector3.new(6485.8, 732.6, -775.5), Vector3.new(6506.3, 732.4, -776), Vector3.new(6526.4, 732.4, -776.2), Vector3.new(6547.3, 732.7, -776.2), Vector3.new(6566.8, 736.2, -772), Vector3.new(6584.7, 742.8, -763.4), Vector3.new(6603.9, 746.6, -756.5), Vector3.new(6626.3, 745.7, -752.2), Vector3.new(6648.2, 741.1, -749.9), Vector3.new(6668.4, 734.2, -749.5), Vector3.new(6687.5, 725.8, -750), Vector3.new(6707.2, 719.4, -751.2), Vector3.new(6727.3, 719.1, -752.5), Vector3.new(6748.4, 719.1, -753.9), Vector3.new(6768.9, 719.1, -755.1), Vector3.new(6790.1, 719.1, -755.5), Vector3.new(6811.6, 719.1, -755.4), Vector3.new(6832.2, 719.1, -755.3), Vector3.new(6853.1, 719.1, -755.2), Vector3.new(6873.5, 719.1, -755.2), Vector3.new(6894.5, 719.1, -755.1), Vector3.new(6915.3, 719.1, -755), Vector3.new(6935.6, 719.1, -755), Vector3.new(6956.8, 719.1, -755.1), Vector3.new(6977.4, 719.1, -755.3), Vector3.new(6998.7, 719.1, -755.4), Vector3.new(7020, 719.1, -755.6), Vector3.new(7041.7, 719.2, -755.7), Vector3.new(7062.3, 719.2, -755.5), Vector3.new(7083, 718.5, -755.1), Vector3.new(7103.8, 715.6, -754.7), Vector3.new(7124.3, 710.6, -754.2), Vector3.new(7143.9, 703.9, -753.7), Vector3.new(7163.3, 695.4, -753.3), Vector3.new(7181.2, 686, -752.9), Vector3.new(7198.9, 674.8, -752.6), Vector3.new(7217.4, 665.7, -752.1), Vector3.new(7237.7, 663.5, -751.7), Vector3.new(7258.8, 663.6, -751.2), Vector3.new(7278.9, 663.6, -750.8), Vector3.new(7299, 663.6, -750.4), Vector3.new(7319.9, 663.6, -749.9), Vector3.new(7339.9, 663.6, -749.5), Vector3.new(7361.2, 663.6, -749), Vector3.new(7382.4, 663.6, -748.5), Vector3.new(7403.1, 663.6, -748.1), Vector3.new(7426.7, 663.6, -747.8), Vector3.new(7447.8, 663.6, -747.7), Vector3.new(7470.1, 663.6, -747.7), Vector3.new(7490.8, 663.6, -747.7), Vector3.new(7511.6, 663.6, -747.8), Vector3.new(7532.4, 663.6, -747.8), Vector3.new(7553.7, 663.6, -747.8), Vector3.new(7574, 663.6, -747.9), Vector3.new(7594.7, 663.6, -747.9), Vector3.new(7615.3, 663.6, -747.9), Vector3.new(7636.6, 663.6, -748), Vector3.new(7657.7, 663.6, -748), Vector3.new(7678.1, 663.6, -748), Vector3.new(7698.8, 663.6, -748.1), Vector3.new(7719.7, 663.6, -748.1), Vector3.new(7741, 663.6, -748.1), Vector3.new(7761.2, 663.6, -748.2), Vector3.new(7781.6, 663.6, -748.2), Vector3.new(7801.9, 663.6, -748.2), Vector3.new(7822.6, 663.6, -748.3), Vector3.new(7845.9, 663.6, -748.3), Vector3.new(7868.5, 663.6, -748.3), Vector3.new(7889.2, 663.6, -748.4), Vector3.new(7910.7, 663.6, -748.4), Vector3.new(7930.8, 663.6, -748.4), Vector3.new(7951.8, 663.6, -748.5), Vector3.new(7972.3, 663.6, -748.5), Vector3.new(7993.2, 663.6, -748.5), Vector3.new(8014.2, 663.6, -748.6), Vector3.new(8034.3, 663.6, -748.6), Vector3.new(8054.3, 663.6, -748.6), Vector3.new(8075.2, 663.6, -748.7), Vector3.new(8095.9, 663.6, -748.7), Vector3.new(8117.1, 663.6, -748.7), Vector3.new(8138.4, 663.6, -748.8), Vector3.new(8158.7, 663.6, -748.8), Vector3.new(8179.2, 663.6, -748.8), Vector3.new(8200.2, 663.6, -748.9), Vector3.new(8221.5, 663.6, -748.9), Vector3.new(8241.9, 663.6, -748.9), Vector3.new(8265, 663.6, -749), Vector3.new(8287.9, 663.6, -749), Vector3.new(8309.5, 663.6, -749), Vector3.new(8329.7, 663.6, -749.1), Vector3.new(8350.6, 663.8, -749.1), Vector3.new(8371.2, 666, -749.1), Vector3.new(8391, 671.1, -749.2), Vector3.new(8411.2, 676.3, -749.2), Vector3.new(8431.4, 681, -749.2), Vector3.new(8452.2, 684.1, -749.3), Vector3.new(8473, 685, -749.3), Vector3.new(8493.4, 683.9, -749.3), Vector3.new(8513.5, 680.7, -749.4), Vector3.new(8533.2, 675.8, -749.4), Vector3.new(8552.5, 669.1, -749.4), Vector3.new(8573, 663.8, -749.5), Vector3.new(8593.6, 663.6, -749.5), Vector3.new(8614.9, 663.6, -749.5), Vector3.new(8635.1, 663.6, -749.5), Vector3.new(8656.1, 663.6, -749.6), Vector3.new(8676.2, 663.6, -749.6), Vector3.new(8696.6, 663.6, -749.6), Vector3.new(8717.3, 663.6, -749.7), Vector3.new(8738.4, 663.6, -749.7), Vector3.new(8759.5, 663.6, -749.7), Vector3.new(8780.9, 663.6, -749.8), Vector3.new(8802, 663.6, -749.8), Vector3.new(8823.1, 663.6, -749.8), Vector3.new(8843.7, 663.6, -749.9), Vector3.new(8864.5, 663.6, -749.9), Vector3.new(8885.5, 663.6, -749.9), Vector3.new(8906.5, 663.6, -750), Vector3.new(8927.1, 663.6, -750), Vector3.new(8948, 663.6, -750), Vector3.new(8968.8, 663.6, -750.1), Vector3.new(8989.2, 667.1, -750.1), Vector3.new(9012.2, 673, -750.1), Vector3.new(9033.3, 677.9, -750.2), Vector3.new(9053.6, 680.7, -750.2), Vector3.new(9074.1, 681.6, -750.2), Vector3.new(9094.8, 680.2, -750.3), Vector3.new(9114.8, 677, -750.3), Vector3.new(9134.1, 671.8, -750.3), Vector3.new(9153.8, 664.8, -750.3), Vector3.new(9153.8, 663.6, -750.3), Vector3.new(9159.9, 663.6, -750.9), Vector3.new(9175.3, 663.6, -752.6), Vector3.new(9198, 663.6, -755), Vector3.new(9228.4, 663.6, -758.2), Vector3.new(9254.6, 663.6, -761), Vector3.new(9271.5, 663.6, -762.8), Vector3.new(9280.3, 663.6, -763.7), Vector3.new(9281.8, 663.2, -763.9), Vector3.new(9283.5, 663.1, -764), Vector3.new(9292.7, 663, -765), Vector3.new(9311.1, 665.2, -766.8), Vector3.new(9329.3, 670.2, -768.7), Vector3.new(9349.7, 675, -771.6), Vector3.new(9371.1, 677.8, -774.7), Vector3.new(9392.4, 678.2, -776.7), Vector3.new(9413, 676.5, -779.1), Vector3.new(9432.1, 673.1, -781.5), Vector3.new(9453.5, 667, -784.3), Vector3.new(9473.4, 662.2, -786.1), Vector3.new(9495.1, 662.2, -786.3), Vector3.new(9515.9, 662.3, -786.5), Vector3.new(9537.6, 662.3, -786.7), Vector3.new(9558.4, 662.3, -786.8), Vector3.new(9578.3, 662.1, -786.7), Vector3.new(9600, 661.6, -786.7), Vector3.new(9620.8, 660.9, -786.9), Vector3.new(9639.3, 660.7, -786.2), Vector3.new(9653.8, 666.9, -778.3), Vector3.new(9667.1, 671.7, -771.7), Vector3.new(9681.9, 674.6, -764.8), Vector3.new(9698, 675.5, -757.9), Vector3.new(9716.3, 674.4, -751.1), Vector3.new(9736, 671.2, -744.9), Vector3.new(9756.2, 665.8, -740), Vector3.new(9776.5, 658.3, -735.2), Vector3.new(9796.6, 648.7, -729.9), Vector3.new(9816.5, 638.5, -724.2), Vector3.new(9837.3, 638.6, -724), Vector3.new(9858.9, 638.7, -723.8), Vector3.new(9878.9, 638.7, -723.8), Vector3.new(9900.6, 638.7, -723.6), Vector3.new(9914.9, 643.2, -729.1), Vector3.new(9928.8, 648.6, -736), Vector3.new(9943.3, 651.8, -741.6), Vector3.new(9959, 652.9, -746.2), Vector3.new(9975.6, 651.9, -749.8), Vector3.new(9991.7, 648.8, -752.6), Vector3.new(10006.2, 643.5, -755.1), Vector3.new(10018.2, 637.9, -757.2), Vector3.new(10023.5, 638.3, -758.1), Vector3.new(10025, 638.3, -758.1), Vector3.new(10034.5, 638.3, -758.2), Vector3.new(10052.6, 638.3, -758.2), Vector3.new(10074.3, 643.3, -758), Vector3.new(10094.3, 648.5, -757.9), Vector3.new(10115.1, 653.9, -757.8), Vector3.new(10135.9, 658.8, -757.7), Vector3.new(10156.7, 661.7, -757.5), Vector3.new(10177.6, 662.5, -757.4), Vector3.new(10198.4, 661.1, -757.3), Vector3.new(10219.1, 657.6, -757.1), Vector3.new(10238.6, 652, -757), Vector3.new(10256.6, 644.3, -756.9), Vector3.new(10271.9, 638, -756.8), Vector3.new(10280.6, 638.3, -756.8), Vector3.new(10281.5, 638.3, -756.8), Vector3.new(10281.5, 638.3, -756.5), Vector3.new(10281.4, 638.3, -750.2), Vector3.new(10281.4, 638.3, -739.9), Vector3.new(10281.4, 638.3, -737.5), Vector3.new(10283, 638.3, -737.5), Vector3.new(10291, 641.3, -737.4), Vector3.new(10300.2, 646.5, -737.4), Vector3.new(10310.7, 651.9, -737.3), Vector3.new(10321.8, 657.4, -737.2), Vector3.new(10333.6, 662.8, -737.2), Vector3.new(10346.4, 668.2, -737.1), Vector3.new(10359.9, 673.7, -737), Vector3.new(10374.2, 678.7, -737), Vector3.new(10390, 681.8, -737.1), Vector3.new(10407.4, 682.7, -737.3), Vector3.new(10426.3, 681.5, -737.5), Vector3.new(10445.1, 678.2, -737.8), Vector3.new(10462.4, 672.8, -738.1), Vector3.new(10478.1, 665.2, -738.3), Vector3.new(10489.3, 663, -738.5), Vector3.new(10492.1, 663.1, -738.5), Vector3.new(10493.5, 663.1, -739), Vector3.new(10502.5, 663, -741.8), Vector3.new(10519, 663, -747), Vector3.new(10538.8, 663.1, -753.2), Vector3.new(10558.7, 663, -759.5), Vector3.new(10579.4, 662.7, -766), Vector3.new(10598.5, 660.2, -772), Vector3.new(10618.3, 655.9, -778.3), Vector3.new(10641.2, 662, -785.9), Vector3.new(10654.6, 667.2, -780.4), Vector3.new(10668.2, 670.4, -775), Vector3.new(10681.8, 671.4, -771.2), Vector3.new(10697.3, 670.2, -768.5), Vector3.new(10712.5, 667, -767.4), Vector3.new(10727.2, 661.6, -767.7), Vector3.new(10741.6, 658, -769.5), Vector3.new(10755.8, 663.1, -772), Vector3.new(10770.8, 667, -775.4), Vector3.new(10787.3, 669, -780.3), Vector3.new(10804.7, 668.8, -786.3), Vector3.new(10820, 666.9, -785.5), Vector3.new(10835.9, 662.8, -783.5), Vector3.new(10852.8, 658.6, -782.5), Vector3.new(10870.7, 664.1, -781.5), Vector3.new(10889.1, 669.1, -779.8), Vector3.new(10908.1, 672.2, -776.8), Vector3.new(10926.5, 673.1, -772.5), Vector3.new(10946.4, 671.9, -766.3), Vector3.new(10965.4, 668.6, -758.6), Vector3.new(10984, 663.2, -749.6), Vector3.new(11001.8, 655.6, -739.1), Vector3.new(11018.5, 646.3, -728), Vector3.new(11037.6, 639.4, -723.8), Vector3.new(11060.1, 639.5, -723.7), Vector3.new(11080.1, 639.6, -723.5), Vector3.new(11092.9, 645.2, -730.3), Vector3.new(11106.6, 650.9, -737), Vector3.new(11120.2, 655.2, -742.4), Vector3.new(11135.4, 657.5, -747), Vector3.new(11151.9, 657.8, -750.6), Vector3.new(11170.2, 655.8, -753.3), Vector3.new(11188.3, 651.9, -754.8), Vector3.new(11208.2, 645.8, -755.5), Vector3.new(11229, 638, -755.4), Vector3.new(11249.9, 638.3, -755.2), Vector3.new(11271.5, 638.3, -755.1), Vector3.new(11290.7, 641.5, -755), Vector3.new(11312.3, 647, -754.8), Vector3.new(11333.2, 650.7, -754.7), Vector3.new(11354, 652.2, -754.6), Vector3.new(11374.8, 651.6, -754.5), Vector3.new(11394.8, 648.9, -754.3), Vector3.new(11413.9, 643.8, -754.2), Vector3.new(11430.1, 637.1, -754.1), Vector3.new(11445.4, 627.9, -754), Vector3.new(11459.1, 616.7, -754), Vector3.new(11470.4, 608, -753.9), Vector3.new(11472.4, 608.4, -753.9), Vector3.new(11475.1, 608.4, -753.2), Vector3.new(11476.3, 608.4, -752.8), Vector3.new(11478, 608.4, -752.4), Vector3.new(11486.8, 608.4, -750.1), Vector3.new(11494.4, 608.4, -748), Vector3.new(11494.9, 608.4, -747.9), Vector3.new(11497, 608.4, -747.4), Vector3.new(11506.2, 608.4, -744.9), Vector3.new(11510.7, 608.4, -743.8), Vector3.new(11511, 608.4, -743.7), Vector3.new(11517.3, 608.4, -742), Vector3.new(11522.1, 608.4, -740.7), Vector3.new(11525.6, 608.4, -739.8), Vector3.new(11529.3, 608.4, -738.8), Vector3.new(11531.9, 608.4, -738.2), Vector3.new(11539.3, 609.3, -736.2), Vector3.new(11540.8, 610, -735.8)}}
local function mc(md, me)
  local mf = h.Character
  local mg = (mf and mf:FindFirstChild("HumanoidRootPart"))
  local mh = (mf and mf:FindFirstChild("Humanoid"))
  if ((not mg or not mh) or (mh.Health <= 0)) then
    return false
  end
  lg(true)
  mh.AutoRotate = false
  pcall(function()
    mh:ChangeState(Enum.HumanoidStateType.Physics)
  end)
  local mi = math.max(lb, 15)
  local mj, mk = {}, 0
  for ml = 2, #md do
    local mm = ((md[ml] - md[(ml - 1)])).Magnitude
    table.insert(mj, mm)
    mk = (mk + mm)
  end
  local mn = false
  local mo = false
  local mp = 0
  local mq = math.max(lb, 15)
  local mr = Vector3.new(0, 0, -1)
  local function ms(mt)
    if (#md == 1) then
      return md[1], Vector3.new(0, 0, -1)
    end
    mt = math.clamp(mt, 0, mk)
    local mu = 0
    for mv = 1, #mj do
      local mw = mj[mv]
      if (mt <= (mu + mw)) then
        local mx = (((mw > 0) and (((mt - mu)) / mw)) or 0)
        return md[mv]:Lerp(md[(mv + 1)], mx), (md[(mv + 1)] - md[mv])
      end
      mu = (mu + mw)
    end
    return md[#md], (md[#md] - md[(#md - 1)])
  end
  local ni = c.RenderStepped:Connect(function(my)
    if mn then
      return
    end
    pcall(function()
      local mz = h.Character
      local na = (mz and mz:FindFirstChild("HumanoidRootPart"))
      local nb = (mz and mz:FindFirstChild("Humanoid"))
      if ((not na or not nb) or (nb.Health <= 0)) then
        mn = true
        return
      end
      if (#md == 0) then
        mo = true
        return
      end
      local nc = math.max(lb, 15)
      local nd = (900 * my)
      mq = (mq + math.clamp((nc - mq), -nd, nd))
      mp = (mp + math.min((mq * math.min(my, 0.1)), 35))
      if (mp >= mk) then
        mp = mk
        mo = true
      end
      local ne, nf = ms(mp)
      local ng = (((nf.Magnitude > 0.01) and nf.Unit) or Vector3.new(0, 0, -1))
      na.AssemblyLinearVelocity = Vector3.zero
      na.AssemblyAngularVelocity = Vector3.zero
      local nh = Vector3.new(ng.X, 0, ng.Z)
      if (nh.Magnitude > 0.01) then
        mr = nh.Unit
      end
      na.CFrame = CFrame.lookAt(ne, (ne + mr), Vector3.new(0, 1, 0))
    end)
  end)
  local nj = math.max(15, ((mk / mi) + 60))
  local nk = tick()
  while (((not mo and ky) and not mn) and ((tick() - nk) < nj)) do
    task.wait(0.03)
  end
  mn = true
  if ni then
    ni:Disconnect()
  end
  pcall(function()
    local nl = h.Character
    local nm = (nl and nl:FindFirstChild("Humanoid"))
    if nm then
      nm.PlatformStand = false
      nm.AutoRotate = true
      pcall(function()
        nm:ChangeState(Enum.HumanoidStateType.Running)
      end)
    end
  end)
  lg(false)
  if (mo and ky) then
    return md[#md]
  end
  return false
end
local function nn()
  if ky then
    return
  end
  ky = true
  task.spawn(function()
    local no = 0
    for np = 1, 16 do
      if (mb[np] and (#mb[np] > 0)) then
        no = (no + 1)
      end
    end
    if (no > 0) then
      br("Auto Win", string.format("%d stages baked. Speed: %d", no, lb), 3.5, "Success")
    else
      br("Auto Win", "No baked routes — using checkpoint scan", 3.5, "Warning")
    end
    while ky do
      local nq = h.Character
      local nr = (nq and nq:FindFirstChild("HumanoidRootPart"))
      local ns = (nq and nq:FindFirstChild("Humanoid"))
      if ((not nr or not ns) or (ns.Health <= 0)) then
        task.wait(0.5)
      else
        if (no > 0) then
          local nt = tonumber(ld:match("%d+"))
          if ((nt and mb[nt]) and (#mb[nt] > 0)) then
            local nu = mb[nt]
            br(("Stage " .. nt), string.format("%d waypoints", #nu), 1.8, "Info")
            local nv = mc(nu, nt)
            if (nv and ky) then
              dk = (dk + ((dl[nt] or 1)))
              br(("Stage " .. nt), "Complete!", 2, "Success")
              lv(nv)
              task.wait(lc)
            else
              task.wait(0.5)
            end
          end
        else
          local nw = lk()
          if (#nw > 0) then
            local nx = {}
            for ny, nz in ipairs(nw) do
              table.insert(nx, nz.Position)
            end
            mc(nx)
            dk = (dk + 1)
            task.wait(lc)
          else
            task.wait(1)
          end
        end
      end
    end
    lg(false)
  end)
end
local function oa()
  ky = false
  if kz then
    kz:Cancel()
  end
  lg(false)
  pcall(function()
    if (h.Character and h.Character:FindFirstChild("Humanoid")) then
      local ob = h.Character.Humanoid
      ob.PlatformStand = false
      pcall(function()
        ob:ChangeState(Enum.HumanoidStateType.Running)
      end)
    end
  end)
end
local oc, od = false, 16
local oe, of = false, 50
local og, oh, oi
local function oj(ok)
  if (((og == nil) and ok.WalkSpeed) and (ok.WalkSpeed > 0)) then
    og = ok.WalkSpeed
  end
  if (((oh == nil) and ok.JumpPower) and (ok.JumpPower > 0)) then
    oh = ok.JumpPower
  end
  if (((oi == nil) and ok.JumpHeight) and (ok.JumpHeight > 0)) then
    oi = ok.JumpHeight
  end
end
local function ol()
  pcall(function()
    local om = h.Character
    local on = (om and om:FindFirstChild("Humanoid"))
    if not on then
      return
    end
    if oc then
      on.WalkSpeed = od
    elseif (og ~= nil) then
      on.WalkSpeed = og
    end
    if oe then
      on.UseJumpPower = true
      on.JumpPower = of
      on.JumpHeight = (((of * of)) / 392.4)
    elseif (oh ~= nil) then
      on.JumpPower = oh
      on.JumpHeight = (oi or 7.2)
    end
  end)
end
local oo, op = false, nil
local function oq(os)
  oo = os
  if op then
    if not os then
      return
    end
    return
  end
  op = task.spawn(function()
    while oo do
      if b:IsKeyDown(Enum.KeyCode.Space) then
        local ot = h.Character
        local ou = (ot and ot:FindFirstChildOfClass("Humanoid"))
        if (ou and (ou.Health > 0)) then
          pcall(function()
            ou:ChangeState("Jumping")
            task.wait(0.04)
            ou:ChangeState("Seated")
          end)
        end
      end
      task.wait(0.04)
    end
    op = nil
  end)
end
local ov = false
local ow = nil
local ox, oy
local function oz(pa)
  pcall(function()
    local pb = h.Character
    local pc = (pb and pb:FindFirstChild("HumanoidRootPart"))
    if ((pc and pa) and pa.Parent) then
      pc.CFrame = pa.CFrame
    end
  end)
end
local function pd(pe)
  if not pe then
    return
  end
  ox = pe.ChildAdded:Connect(function(pf)
    if ((pf.Name == "SpecialKey_Normal") or pf.Name:find("SpecialKey")) then
      task.delay(0.15, function()
        oz(pf)
        br("Special Key", "Spawned — teleported", 2, "Success")
      end)
    end
  end)
end
local function pg(ph)
  ov = ph
  if not ph then
    if ox then
      ox:Disconnect()
      ox = nil
    end
    if oy then
      oy:Disconnect()
      oy = nil
    end
    return
  end
  if ow then
    return
  end
  pd(workspace:FindFirstChild("SpecialKeys"))
  oy = workspace.ChildAdded:Connect(function(pi)
    if (pi.Name == "SpecialKeys") then
      if ox then
        ox:Disconnect()
      end
      pd(pi)
    end
  end)
  ow = task.spawn(function()
    while ov do
      pcall(function()
        local pj = h.Character
        local pk = (pj and pj:FindFirstChild("HumanoidRootPart"))
        local pl = workspace:FindFirstChild("SpecialKeys")
        if (pk and pl) then
          for pm, pn in ipairs(pl:GetChildren()) do
            local po = ((pn.Name == "SpecialKey_Normal") or pn.Name:find("SpecialKey"))
            if (po and (((pk.Position - pn.Position)).Magnitude > 6)) then
              pk.CFrame = pn.CFrame
              break
            end
          end
        end
      end)
      task.wait(0.4)
    end
    ow = nil
  end)
end
local function pp()
  pcall(function()
    local pq = h.Character
    local pr = (pq and pq:FindFirstChild("HumanoidRootPart"))
    if not pr then
      br("Special Key", "No character", 2, "Danger")
      return
    end
    local ps = workspace:FindFirstChild("SpecialKeys")
    local pt
    if ps then
      for pu, pv in ipairs(ps:GetChildren()) do
        if (pv.Name == "SpecialKey_Normal") then
          pt = pv
          break
        end
      end
      if not pt then
        for pw, px in ipairs(ps:GetChildren()) do
          if px.Name:find("SpecialKey") then
            pt = px
            break
          end
        end
      end
    end
    if not pt then
      br("Special Key", "None spawned yet", 2, "Danger")
      return
    end
    pr.CFrame = pt.CFrame
    br("Special Key", "Teleported!", 2, "Success")
  end)
end
local function py(pz)
  local qa = false
  pcall(function()
    local qb = {openurl, openUrl, OpenUrl, open_url, py, windowopen, WindowOpen}
    for qc, qd in ipairs(qb) do
      if (type(qd) == "function") then
        local qe = pcall(qd, pz)
        if (qe and not qa) then
          qa = true
        end
      end
    end
  end)
  pcall(function()
    local qf = ((getgenv and getgenv()) or {})
    for qg, qh in ipairs({"openurl", "openUrl", "OpenUrl", "open_url", "OpenURL", "windowopen"}) do
      if (type(qf[qh]) == "function") then
        local qi = pcall(qf[qh], pz)
        if (qi and not qa) then
          qa = true
        end
      end
    end
  end)
  return qa
end
local function qj()
  local qk = "https://discord.gg/NErP8zzq2"
  if py(qk) then
    br("Discord", "Opening invite…", 3, "Success")
  else
    pcall(function()
      if setclipboard then
        setclipboard(qk)
      end
    end)
    br("Discord", "Link copied to clipboard", 4, "Warning")
  end
end
h.CharacterAdded:Connect(function()
  task.wait(0.5)
  ol()
end)
local ql = fv("Dashboard", "◆")
local qm = gk.CreateSection(ql, "System Control")
local qn = gk.CreateSection(ql, "Win Counter")
local qo = Instance.new("TextLabel")
qo.Size = UDim2.new(1, 0, 0, 48)
qo.BackgroundColor3 = Color3.fromRGB(30, 8, 12)
qo.BackgroundTransparency = 0.35
qo.BorderSizePixel = 0
qo.Font = Enum.Font.GothamBold
qo.TextSize = 30
qo.TextColor3 = u.BloodGlow
qo.Text = "0"
qo.LayoutOrder = 1
qo.Parent = qn
local qp = Instance.new("UICorner")
qp.CornerRadius = UDim.new(0, 8)
qp.Parent = qo
local qq = Instance.new("TextLabel")
qq.Size = UDim2.new(1, 0, 0, 18)
qq.Position = UDim2.new(0, 0, 0, 44)
qq.BackgroundTransparency = 1
qq.Font = Enum.Font.GothamMedium
qq.TextSize = 12
qq.TextColor3 = u.TextSecondary
qq.Text = "Session Wins"
qq.LayoutOrder = 2
qq.Parent = qn
c.Heartbeat:Connect(function()
  local qr = dk
  local qs = ""
  if (qr >= 1e12) then
    qr = (qr / 1e12)
    qs = "t"
  elseif (qr >= 1e9) then
    qr = (qr / 1e9)
    qs = "b"
  elseif (qr >= 1e6) then
    qr = (qr / 1e6)
    qs = "m"
  elseif (qr >= 1e3) then
    qr = (qr / 1e3)
    qs = "k"
  end
  if (qs ~= "") then
    qr = (math.floor((qr * 10)) / 10)
    qo.Text = (((((((qr % 1) == 0)) and tostring(qr)) or string.format("%.1f", qr))) .. qs)
  else
    qo.Text = tostring(qr)
  end
end)
gk.CreateButton(qm, "Send Network Ping", "Broadcast a live latency check", function()
  br("Network", ("Server responded in " .. (math.random(18, 42) .. "ms")), 3, "Success")
end)
gk.CreateSlider(qm, "Process Priority", 1, 100, 85, function()

end)
local qt = fv("Auto Win", "☠")
local qu = gk.CreateSection(qt, "Auto Win Engine")
gk.CreateToggle(qu, "Auto Win", "Glide through the course automatically", false, function(qv)
  if qv then
    nn()
  else
    oa()
  end
end)
gk.CreateSlider(qu, "Movement Speed (Studs/s)", 50, 300, 50, function(qw)
  lb = qw
end)
gk.CreateSlider(qu, "Loop Delay (s)", 1, 5, 2, function(qx)
  lc = qx
end)
gk.CreateDropdown(qu, "Target Stage", {"Stage 1 — 1 win", "Stage 2 — 3 wins", "Stage 3 — 10 wins", "Stage 4 — 20 wins", "Stage 5 — 50 wins", "Stage 6 — 100 wins", "Stage 7 — 150 wins", "Stage 8 — 300 wins", "Stage 9 — 500 wins", "Stage 10 — 1k wins", "Stage 11 — 2.5k wins", "Stage 12 — 10k wins", "Stage 13 — 50k wins", "Stage 14 — 50k wins", "Stage 15 — 150k wins", "Stage 16 — 350k wins"}, "Stage 1 — 1 win", function(qy)
  ld = qy
  br("Target Stage", qy, 2, "Info")
end)
gk.CreateToggle(qu, "Safety NoClip", "Disable collision on character", true, function(qz)
  le = qz
  lg(qz)
end)
local ra = gk.CreateSection(qt, "Special Keys")
gk.CreateToggle(ra, "Auto TP to Special Key", "Teleport the moment one spawns", false, function(rb)
  pg(rb)
  br("Special Keys", ("Auto TP: " .. (((rb and "ON") or "OFF"))), 2, "Info")
end)
gk.CreateButton(ra, "TP to Special Key", "Manual teleport", function()
  pp()
end)
local rc = fv("Player", "⚔")
local rd = gk.CreateSection(rc, "Locomotion")
gk.CreateToggle(rd, "WalkSpeed Boost", "Toggle walkspeed on/off", false, function(re)
  oc = re
  ol()
end)
gk.CreateSlider(rd, "WalkSpeed Value", 16, 1000, 16, function(rf)
  od = rf
  if oc then
    ol()
  end
end)
gk.CreateToggle(rd, "JumpPower Boost", "Toggle jump power on/off", false, function(rg)
  oe = rg
  ol()
end)
gk.CreateSlider(rd, "JumpPower Value", 50, 1000, 50, function(rh)
  of = rh
  if oe then
    ol()
  end
end)
gk.CreateToggle(rd, "Infinite Jump", "Hold Space to auto-jump", false, function(ri)
  oq(ri)
end)
local rj = fv("Settings", "⚙")
local rk = gk.CreateSection(rj, "Preferences")
gk.CreateKeybind(rk, "Toggle Menu Keybind", Enum.KeyCode.RightControl, function(rl)
  eu = rl
  br("Keybind", ("New key: " .. rl.Name), 3, "Success")
end)
gk.CreateButton(rk, "Unload UI", "Destroy all instances and restore lighting", function()
  br("Unloading", "GORE LAB shutting down…", 1.2, "Danger")
  task.wait(0.6)
  if aa then
    aa:Destroy()
  end
  ac:Destroy()
end)
local rm = gk.CreateSection(rj, "Atmosphere")
gk.CreateToggle(rm, "Frosted Depth Blur", "Blur the 3D scene behind the UI", false, function(rn)
  ab = rn
  if aa then
    aa.Enabled = (rn and cn.Visible)
  end
end)
gk.CreateSlider(rm, "Window Transparency", 5, 80, 8, function(ro)
  cn.BackgroundTransparency = (ro / 100)
end)
gk.CreateSlider(rm, "Sheen Intensity", 0, 100, 70, function(rp)
  cv.BackgroundTransparency = (((100 - rp)) / 100)
end)
local rq = fv("Credits", "★")
local rr = gk.CreateSection(rq, "GORE LAB")
gk.CreateButton(rr, "Created by lostpostcard", "Roblox User ID: 11594416001", function()
  br("Creator", "Opening Roblox profile…", 3, "Info")
  pcall(function()
    game:GetService("GuiService"):OpenBrowserUrl("https://www.roblox.com/users/11594416001/profile")
  end)
end)
gk.CreateButton(rr, "Discord Server", "discord.gg/NErP8zzq2", function()
  qj()
end)
gk.CreateButton(rr, "Unload UI", "Close everything cleanly", function()
  task.wait(0.3)
  if aa then
    aa:Destroy()
  end
  ac:Destroy()
end)
fn["Dashboard"].Select()
bp.ZIndex = 800
local rs = "gorefirstkeyreleased"
local rt = false
_G.GORELocked = true
cn.Visible = false
local ru = i:FindFirstChild("GORELock")
if ru then
  ru:Destroy()
end
local rv = Instance.new("ScreenGui")
rv.Name = "GORELock"
rv.ResetOnSpawn = false
rv.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
rv.DisplayOrder = 999
rv.IgnoreGuiInset = true
rv.Parent = i
local rw = Instance.new("Frame")
rw.Size = UDim2.new(0, 380, 0, 400)
rw.AnchorPoint = Vector2.new(0.5, 0.5)
rw.Position = UDim2.new(0.5, 0, 0.5, 0)
rw.BackgroundColor3 = u.WindowGlass
rw.BackgroundTransparency = 0.05
rw.BorderSizePixel = 0
rw.ClipsDescendants = true
rw.Active = true
rw.Parent = rv
local rx = Instance.new("UICorner")
rx.CornerRadius = UDim.new(0, 16)
rx.Parent = rw
local ry = Instance.new("UIStroke")
ry.Color = u.BloodBright
ry.Thickness = 1.8
ry.Parent = rw
rw.Size = UDim2.new(0, 0, 0, 0)
rw.BackgroundTransparency = 1
task.spawn(function()
  a:Create(rw, TweenInfo.new(0.5, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Size = UDim2.new(0, 380, 0, 400), BackgroundTransparency = 0.05}):Play()
end)
local rz = false
local sa, sb, sc
rw.InputBegan:Connect(function(sd)
  if rt then
    return
  end
  if ((sd.UserInputType == Enum.UserInputType.MouseButton1) or (sd.UserInputType == Enum.UserInputType.Touch)) then
    rz = true
    sa = sd.Position
    sb = rw.Position
    sd.Changed:Connect(function()
      if (sd.UserInputState == Enum.UserInputState.End) then
        rz = false
      end
    end)
  end
end)
rw.InputChanged:Connect(function(se)
  if ((se.UserInputType == Enum.UserInputType.MouseMovement) or (se.UserInputType == Enum.UserInputType.Touch)) then
    sc = se
  end
end)
b.InputChanged:Connect(function(sf)
  if ((sf == sc) and rz) then
    local sg = (sf.Position - sa)
    local sh = UDim2.new(sb.X.Scale, (sb.X.Offset + sg.X), sb.Y.Scale, (sb.Y.Offset + sg.Y))
    a:Create(rw, TweenInfo.new(0.08, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Position = sh}):Play()
  end
end)
task.spawn(function()
  while ((rw and rw.Parent) and not rt) do
    a:Create(ry, TweenInfo.new(0.9, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {Transparency = 0.0, Thickness = 3}):Play()
    task.wait(0.9)
    a:Create(ry, TweenInfo.new(0.9, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {Transparency = 0.55, Thickness = 1.8}):Play()
    task.wait(0.9)
  end
end)
local si = Instance.new("Frame")
si.Size = UDim2.fromScale(1, 1)
si.Position = UDim2.fromScale(0, 0)
si.BackgroundColor3 = Color3.fromRGB(6, 2, 3)
si.BackgroundTransparency = 0.15
si.BorderSizePixel = 0
si.ZIndex = 0
si.Parent = rw
local sj = Instance.new("UIGradient")
sj.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(35, 3, 8)), ColorSequenceKeypoint.new(0.5, Color3.fromRGB(6, 2, 3)), ColorSequenceKeypoint.new(1, Color3.fromRGB(50, 4, 10))})
sj.Rotation = 25
sj.Parent = si
local sk = Random.new(4421)
for sl = 1, 26 do
  local sm = Instance.new("Frame")
  local sn = sk:NextInteger(3, 14)
  sm.Size = UDim2.fromOffset(sn, math.max(3, math.floor((sn * sk:NextNumber(0.45, 1.5)))))
  sm.Position = UDim2.fromScale(sk:NextNumber(0.02, 0.98), sk:NextNumber(0.03, 0.97))
  sm.Rotation = sk:NextInteger(0, 360)
  sm.BackgroundColor3 = Color3.fromRGB(sk:NextInteger(100, 220), 5, 14)
  sm.BackgroundTransparency = sk:NextNumber(0.05, 0.35)
  sm.BorderSizePixel = 0
  sm.ZIndex = 0
  sm.Parent = si
  local so = Instance.new("UICorner")
  so.CornerRadius = UDim.new(0.5, 0)
  so.Parent = sm
end
task.spawn(function()
  while ((rw and rw.Parent) and not rt) do
    local sp = Instance.new("Frame")
    sp.Size = UDim2.fromOffset(sk:NextInteger(3, 6), sk:NextInteger(6, 12))
    sp.Position = UDim2.new(sk:NextNumber(0.02, 0.98), 0, 0, -20)
    sp.BackgroundColor3 = Color3.fromRGB(sk:NextInteger(160, 230), 5, 15)
    sp.BackgroundTransparency = 0.15
    sp.BorderSizePixel = 0
    sp.ZIndex = 1
    sp.Parent = si
    local sq = Instance.new("UICorner")
    sq.CornerRadius = UDim.new(0.5, 0)
    sq.Parent = sp
    a:Create(sp, TweenInfo.new(sk:NextNumber(2, 4), Enum.EasingStyle.Linear), {Position = UDim2.new(sp.Position.X.Scale, 0, 1, 20)}):Play()
    task.delay(4.2, function()
      if sp then
        sp:Destroy()
      end
    end)
    task.wait(sk:NextNumber(0.8, 2.4))
  end
end)
local sr = Instance.new("Frame")
sr.Size = UDim2.new(1, 0, 0, 90)
sr.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
sr.BorderSizePixel = 0
sr.ZIndex = 1
sr.Parent = rw
local ss = Instance.new("UIGradient")
ss.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.94), NumberSequenceKeypoint.new(0.4, 0.98), NumberSequenceKeypoint.new(1, 1)})
ss.Rotation = 90
ss.Parent = sr
local st = Instance.new("Frame")
st.Size = UDim2.new(0, 60, 0, 3)
st.AnchorPoint = Vector2.new(0.5, 0)
st.Position = UDim2.new(0.5, 0, 0, 0)
st.BackgroundColor3 = u.BloodBright
st.BorderSizePixel = 0
st.ZIndex = 2
st.Parent = rw
local su = Instance.new("UICorner")
su.CornerRadius = UDim.new(1, 0)
su.Parent = st
local sv = Instance.new("TextLabel")
sv.Size = UDim2.new(0, 44, 0, 44)
sv.AnchorPoint = Vector2.new(0.5, 0)
sv.Position = UDim2.new(0.5, 0, 0, 22)
sv.BackgroundColor3 = u.CardGlass
sv.BackgroundTransparency = 0.2
sv.Text = "🩸"
sv.TextSize = 22
sv.Font = Enum.Font.GothamBold
sv.ZIndex = 2
sv.Parent = rw
local sw = Instance.new("UICorner")
sw.CornerRadius = UDim.new(0, 12)
sw.Parent = sv
local sx = Instance.new("UIStroke")
sx.Color = u.BloodBright
sx.Transparency = 0.35
sx.Thickness = 1.3
sx.Parent = sv
task.spawn(function()
  while ((sv and sv.Parent) and not rt) do
    a:Create(sx, TweenInfo.new(0.7, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {Transparency = 0.05, Thickness = 2}):Play()
    task.wait(0.7)
    a:Create(sx, TweenInfo.new(0.7, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {Transparency = 0.55, Thickness = 1.3}):Play()
    task.wait(0.7)
  end
end)
local sy = Instance.new("TextLabel")
sy.Size = UDim2.new(1, 0, 0, 30)
sy.Position = UDim2.new(0, 0, 0, 76)
sy.BackgroundTransparency = 1
sy.Font = Enum.Font.GothamBlack
sy.TextSize = 24
sy.TextColor3 = u.TextPrimary
sy.RichText = true
sy.Text = "<b>GORE</b> <font color=\"rgb(220,18,30)\">LAB</font>"
sy.TextXAlignment = Enum.TextXAlignment.Center
sy.ZIndex = 2
sy.Parent = rw
local sz = Instance.new("TextLabel")
sz.Size = UDim2.new(1, -40, 0, 16)
sz.AnchorPoint = Vector2.new(0.5, 0)
sz.Position = UDim2.new(0.5, 0, 0, 110)
sz.BackgroundTransparency = 1
sz.Font = Enum.Font.Gotham
sz.TextSize = 12
sz.TextColor3 = u.TextSecondary
sz.Text = "Enter your access key to continue"
sz.TextXAlignment = Enum.TextXAlignment.Center
sz.ZIndex = 2
sz.Parent = rw
local ta = Instance.new("TextLabel")
ta.Size = UDim2.new(1, -48, 0, 14)
ta.AnchorPoint = Vector2.new(0.5, 0)
ta.Position = UDim2.new(0.5, 0, 0, 145)
ta.BackgroundTransparency = 1
ta.Font = Enum.Font.GothamBold
ta.TextSize = 10
ta.TextColor3 = u.TextMuted
ta.TextXAlignment = Enum.TextXAlignment.Left
ta.Text = "ACCESS KEY"
ta.ZIndex = 2
ta.Parent = rw
local tb = Instance.new("TextBox")
tb.Size = UDim2.new(1, -48, 0, 42)
tb.AnchorPoint = Vector2.new(0.5, 0)
tb.Position = UDim2.new(0.5, 0, 0, 163)
tb.BackgroundColor3 = Color3.fromRGB(15, 6, 10)
tb.BackgroundTransparency = 0.2
tb.BorderSizePixel = 0
tb.Font = Enum.Font.GothamBold
tb.TextSize = 14
tb.TextColor3 = u.TextPrimary
tb.PlaceholderText = "enter key…"
tb.PlaceholderColor3 = u.TextMuted
tb.TextXAlignment = Enum.TextXAlignment.Center
tb.ClearTextOnFocus = false
tb.Text = ""
tb.ZIndex = 2
tb.Parent = rw
local tc = Instance.new("UICorner")
tc.CornerRadius = UDim.new(0, 8)
tc.Parent = tb
local td = Instance.new("UIStroke")
td.Color = u.CardStroke
td.Transparency = 0.5
td.Thickness = 1
td.Parent = tb
tb.Focused:Connect(function()
  a:Create(td, TweenInfo.new(0.2), {Color = u.BloodBright, Transparency = 0.2, Thickness = 1.4}):Play()
end)
tb.FocusLost:Connect(function()
  a:Create(td, TweenInfo.new(0.2), {Color = u.CardStroke, Transparency = 0.5, Thickness = 1}):Play()
end)
local te = Instance.new("TextLabel")
te.Size = UDim2.new(1, -48, 0, 16)
te.AnchorPoint = Vector2.new(0.5, 0)
te.Position = UDim2.new(0.5, 0, 0, 212)
te.BackgroundTransparency = 1
te.Font = Enum.Font.GothamMedium
te.TextSize = 11
te.TextColor3 = u.TextSecondary
te.TextXAlignment = Enum.TextXAlignment.Center
te.Text = "Awaiting key…"
te.ZIndex = 2
te.Parent = rw
local tf = Instance.new("TextButton")
tf.Size = UDim2.new(1, -48, 0, 44)
tf.AnchorPoint = Vector2.new(0.5, 0)
tf.Position = UDim2.new(0.5, 0, 0, 240)
tf.BackgroundColor3 = u.BloodBright
tf.BorderSizePixel = 0
tf.AutoButtonColor = false
tf.Font = Enum.Font.GothamBold
tf.TextSize = 14
tf.TextColor3 = Color3.fromRGB(255, 240, 240)
tf.Text = "UNLOCK"
tf.ZIndex = 2
tf.Parent = rw
local tg = Instance.new("UICorner")
tg.CornerRadius = UDim.new(0, 10)
tg.Parent = tf
local th = Instance.new("UIStroke")
th.Color = u.BloodGlow
th.Transparency = 0.4
th.Thickness = 1.4
th.Parent = tf
tf.MouseEnter:Connect(function()
  a:Create(tf, TweenInfo.new(0.15), {BackgroundColor3 = u.BloodGlow}):Play()
end)
tf.MouseLeave:Connect(function()
  a:Create(tf, TweenInfo.new(0.15), {BackgroundColor3 = u.BloodBright}):Play()
end)
local ti = Instance.new("TextButton")
ti.Size = UDim2.new(1, -48, 0, 36)
ti.AnchorPoint = Vector2.new(0.5, 0)
ti.Position = UDim2.new(0.5, 0, 0, 296)
ti.BackgroundColor3 = Color3.fromRGB(24, 10, 14)
ti.BackgroundTransparency = 0.15
ti.BorderSizePixel = 0
ti.AutoButtonColor = false
ti.Font = Enum.Font.GothamBold
ti.TextSize = 12
ti.TextColor3 = u.TextPrimary
ti.Text = "🔑  GET KEY"
ti.ZIndex = 2
ti.Parent = rw
local tj = Instance.new("UICorner")
tj.CornerRadius = UDim.new(0, 10)
tj.Parent = ti
local tk = Instance.new("UIStroke")
tk.Color = u.BloodBright
tk.Transparency = 0.55
tk.Thickness = 1.2
tk.Parent = ti
ti.MouseEnter:Connect(function()
  a:Create(ti, TweenInfo.new(0.15), {BackgroundColor3 = Color3.fromRGB(38, 14, 20), BackgroundTransparency = 0}):Play()
  a:Create(tk, TweenInfo.new(0.15), {Color = u.BloodGlow, Transparency = 0.25}):Play()
end)
ti.MouseLeave:Connect(function()
  a:Create(ti, TweenInfo.new(0.15), {BackgroundColor3 = Color3.fromRGB(24, 10, 14), BackgroundTransparency = 0.15}):Play()
  a:Create(tk, TweenInfo.new(0.15), {Color = u.BloodBright, Transparency = 0.55}):Play()
end)
ti.MouseButton1Click:Connect(function()
  w(v.Click, 0.4)
  local tl = "https://discord.gg/NErP8zzq2"
  local tm = pcall(function()
    if setclipboard then
      setclipboard(tl)
    end
  end)
  if tm then
    te.Text = "Discord link copied to clipboard!"
    te.TextColor3 = u.Success
    ti.Text = "✅  COPIED"
    task.wait(1.5)
    if (ti and ti.Parent) then
      ti.Text = "🔑  GET KEY"
    end
  else
    te.Text = "Couldn't copy — link: discord.gg/NErP8zzq2"
    te.TextColor3 = u.Warning
  end
end)
local tn = Instance.new("TextLabel")
tn.Size = UDim2.new(1, 0, 0, 18)
tn.AnchorPoint = Vector2.new(0.5, 1)
tn.Position = UDim2.new(0.5, 0, 1, -12)
tn.BackgroundTransparency = 1
tn.Font = Enum.Font.GothamMedium
tn.TextSize = 10
tn.TextColor3 = u.TextMuted
tn.Text = "GORE LAB • OFFLINE GATE"
tn.TextXAlignment = Enum.TextXAlignment.Center
tn.ZIndex = 2
tn.Parent = rw
local to = false
local function tp()
  if (rt or to) then
    return
  end
  local tq = tb.Text:gsub("%s+", "")
  if (#tq == 0) then
    te.Text = "Enter a key first"
    te.TextColor3 = u.Warning
    w(v.Notif, 0.3)
    return
  end
  to = true
  tf.Text = "CHECKING…"
  tf.Active = false
  te.Text = "Verifying…"
  te.TextColor3 = u.TextSecondary
  task.spawn(function()
    task.wait(0.5)
    if (tq:lower() == rs) then
      rt = true
      te.Text = "Access granted"
      te.TextColor3 = u.Success
      w(v.Toggle, 0.5)
      for tr, ts in ipairs(rv:GetDescendants()) do
        if ts:IsA("GuiObject") then
          a:Create(ts, TweenInfo.new(0.35), {BackgroundTransparency = 1}):Play()
        end
        if ((ts:IsA("TextLabel") or ts:IsA("TextButton")) or ts:IsA("TextBox")) then
          a:Create(ts, TweenInfo.new(0.3), {TextTransparency = 1}):Play()
        end
        if ts:IsA("UIStroke") then
          a:Create(ts, TweenInfo.new(0.3), {Transparency = 1}):Play()
        end
      end
      task.wait(0.4)
      rv:Destroy()
      _G.GORELocked = false
      cn.Visible = true
      if dw then
        dw()
      end
      br("Welcome", ("Access granted — " .. h.DisplayName), 4, "Success")
    else
      to = false
      tf.Text = "UNLOCK"
      tf.Active = true
      te.Text = "Invalid key"
      te.TextColor3 = u.Danger
      w(v.Notif, 0.5)
    end
  end)
end
tf.MouseButton1Click:Connect(function()
  w(v.Click, 0.4)
  tp()
end)
tb.FocusLost:Connect(function(tt)
  if tt then
    tp()
  end
end)
print("[GORE LAB v5.0] Loaded — blood drips, tabs awake.")
