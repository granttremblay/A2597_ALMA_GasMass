pro gasmass, file,region,chan,rms

; allow specification of multiple channels i.e. chan=[11,15]
if n_elements(chan) ne 2 then chan=[chan,chan]


; region=[xmin,xmax,ymin,ymax] in image coords (square)
f=readfits(file,hdr)

f[where(f lt rms)]=0.

bmaj=sxpar(hdr,'BMAJ')*3600.
bmin=sxpar(hdr,'BMIN')*3600.
cdelt1=abs(sxpar(hdr,'CDELT1'))*3600
chanwidth=sxpar(hdr,'CDELT3')/1e3
s=size(f)



beamarea=total(psf_gaussian(npixel=[s[1],s[2]],fwhm=[bmaj,bmin]/cdelt1,ndimen=2))
;print,"beamarea",beamarea
flux=total(f[region[0]:region[1],region[2]:region[3],chan[0]:chan[1]]/beamarea)*chanwidth
totflux=total(f*chanwidth/beamarea)

; plot: plot,total(total(f[100:200,100:200,*],1),1)/beamarea

print,"Total flux in area of interest"
print, flux, "Jy/beam"
print, "Percent of total CO(2-1) flux" 
print,(flux/totflux)*100, " percent"
print, "Rough gas mass estimate, in x10^6 Msol"
print,((flux/totflux)*1.8e9)/1e6, "x10^6 solar masses"


end
