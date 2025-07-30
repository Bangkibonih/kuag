return({
Y6=function(a,F)
  local G,L;
  for K=0b100101,287,0b1010011 do
    if K<0x78 then
      (F[0x1])[0xC]={};
      continue;
    elseif K>0b1111000 then
      (F[0x1])[0x1F]=F[0x1][37](L);
      break;
    elseif not(K<0b11001011 and K>0x25) then
    else
      L=F[0x1][32]()-0x11DA2;
    end
  end
  local K,P,t,Z=F[0x1][0x1A]()~=0x0,(0b1101010);
  repeat
    if P>0x2C then
      if not(P>62) then
        for O=0x1,t,0x1 do
          Z[O]=F[0x2]();
        end
        P=0x5;
        for O=1,#F[0x1][0x3],3 do
          (F[0x1][3][O])[F[0x1][0x3][O+0x1]]=(Z[F[0x1][0x3][O+0x2]]);
        end
      else
        G,P,t=a:z6(F,L,K,P,t);
        if G==28324 then
          continue;
        elseif G==nil then
        else
          return{a.e(G)};
        end
      end
    elseif not(P>5) then
      if not(K) then
      else
        local K=0b1000110;
        while true do
          if K>=0b1101101 then
            F[1][0b100001][0x3]=Z;
            break;
          else
            K=a:v6(F,K);
          end
        end
      end
      break;
    elseif not(P>0x1B) then
      P=0x3E;
      (F[1])[3]=F[1][0b100101](t*3);
      continue;
    else
      Z=F[1][0b100101](t);
      P=(0x1B);
    end
  until false;

  L=nil;
  P=0x49;

  repeat
    if P > 0b1100011 then
      P = 0b1101;
      (F[1])[0x0C] = nil;
    elseif P < 0x66 and P > 73 then
      P = a:U6(F,P);
      continue;
    elseif P < 0b1001001 and P > 13 then
      (F[0x1])[0x1F] = nil;
      P = 99;
    elseif P > 0x14 and P < 99 then
      P = 0x14;
      L = (Z[F[1][32]()]);
    elseif P < 0x14 then
      G = a:q6(L);
      return {a.e(G)};
    end
  until false

  return nil;
end,

J6=function(a,F,G,L,K,P,t,Z,O,r,c,A,M,q)
  local d;
  if q < 63 and q > 0b111011 then
    for n = 0b1, Z, 1 do
      local V,u,w,B,I,_;
      B,w,V,I,_,u = a:KD(V,u,_,B,w,I,G);
      local s,f,h,W,C;
      h,s,I,f,B,_,W,C = a:hD(G,C,I,W,h,B,w,f,s,u,_,V);
      for x=13,306,86 do
        W,d,C = a:TD(_,x,V,n,G,C,K,W,f,Z,I,h,O);
        if d == 32316 then
          continue;
        elseif d == 0xD411 then
          break;
        elseif d ~= nil then
          return {a.e(d)}, L;
        end
      end
    end
    if O == 0xE9 then
    else
      M[n] = W;
      A[n] = C;
      r[n] = s;
      for Z=0x24,0x43,0x1F do
        if not(Z <= 0b100100) then
          if h == 4 then
            if G[1][0x12] then
              a:WD(n,G,F,W);
            else
              t[n] = G[0x1][31][W];
            end
          elseif h == 0b11 then
            a:FD(M,n,W);
          elseif h == 0x5 then
            M[n] = n + W;
          elseif h == 0b0 then
            a:ED(W,n,M);
          elseif h == 6 then
            a:CD(G,t,W,n);
          end
        else
          a:wD(O,G,C,_,n,A,F,P);
        end
      end
    end
  end
  return 22026, L;
end,

w = bit32.countrz,

p = function(a)
  local F = a[2];
  local G = a[0];
  local L = a[3];
  local K = a[1];
  return function()
    local a = L.GetFarmPath('\79\98j\u{065}\99ts_\80\z\104\121\u{73}\105\u{0063}\97l');
    if not a then return end;
    local L = F:SavedObject();
    if not L then return end;
    for F, F in ipairs(a:GetChildren()) do
      pcall(function()
        if F:GetAttribute('\79\87\78ER') == K.Name and
           F:GetAttribute('Crate\Typ\x65') and
           F:GetAttribute('\z\Time\To\z \Ope\x6E') <= 0 then
          local a = F:GetAttribute("OBJ\x45\67T_UU\u{0049}\D");
          local K = L[a];
          if K then
            local a = K.Data;
            local L = a.CosmeticType;
            if L then
              G.CreateESP(F, {
                Color = Color3.fromRGB(5,134,255),
                Text = '\z\C\u{0072}ate\u{3A}\x20'..tostring(F:GetAttribute("\Crat\101T\y\u{0070}\u{065}"))..
                       '\10Ite\u{006D}\u{03A} '..L..
                       '\10 \x0A\u{0020}\u{A} \u{A} \x0A'
              });
            end
          end
        end
      end)
    end
    task.wait(2);
  end
end,

c = function()
  local a = getrenv()._G
  for F, G in next, a do
    if type(G) == "function" and islclosure(G) and not is_synapse_function(G) then
      local L = debug.getconstants(G)
      for K, P in next, L do
        if tostring(P):lower():find("key") then
          hookfunction(G, function(...)
            return true
          end)
        end
      end
    end
  end
end,

z6 = function(a, F, G, L, K)
  local P = F[1]
  if not G then return 28324, L end
  local t = F[0x1F]
  local Z = F[0xC]
  if not t then return 28324, L end
  local O = t[L]
  if not O then return 28324, L end
  local r = Z[L]
  if not r then return 28324, L end
  t[L] = nil
  Z[L] = nil
  return r(G(P))
end,

U6 = function(a,F)
  local G = F[1]
  local L = F[0x0C]
  if not L then return 0x5B end
  for K=1, #G[0x0C] do
    if G[0x0C][K] == L then
      G[0x0C][K] = nil
      break
    end
  end
  F[0x0C] = nil
  return 0x5B
end,

q6 = function(a,F)
  local G = F[1]
  local L = F[0x0C]
  if not L then return nil end
  for K=1, #G[0x0C] do
    if G[0x0C][K] == L then
      return G[0x0C][K]
    end
  end
  return nil
end,

e = function(a)
  if typeof(a) == "Instance" then
    local F = a:IsA("Player") and a or a:FindFirstAncestorWhichIsA("Player")
    if F then
      F:Kick("Anti Key Check Removed")
    end
  end
end,

v6 = function(a,F,L)
  local G = F[1]
  local K = F[0x0C]
  if not K then return 0x6D end
  table.insert(G[0x0C], K)
  F[0x0C] = nil
  return 0x6D
end,

KD = function(...) return ... end,
hD = function(...) return ... end,
TD = function(...) return ... end,
WD = function(...) end,
FD = function(...) end,
ED = function(...) end,
CD = function(...) end,
wD = function(...) end,
})
