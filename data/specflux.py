
# with mask
specflux(imagename="a2597_CO21_pbcorr_natural_10kms.fits", box="110,80,166,204",  mask="a2597_CO21_pbcorr_natural_10kms.fits>=0.00087", unit="km/s", logfile="10kms.log", overwrite=True)
specflux(imagename="a2597_CO21_pbcorr_natural_40kms.fits", box="110,80,166,204", mask="a2597_CO21_pbcorr_natural_40kms.fits>=0.000539", unit="km/s", logfile="40kms.log", overwrite=True)


# without mask
specflux(imagename="a2597_CO21_pbcorr_natural_10kms.fits", box="110,80,166,204", unit="km/s", logfile="10kms.log", overwrite=True)
specflux(imagename="a2597_CO21_pbcorr_natural_40kms.fits", box="110,80,166,204", unit="km/s", logfile="40kms.log", overwrite=True)

specflux(imagename="a2597_CO21_pbcorr_natural_40kms.fits", unit="km/s", logfile="40kms.log", overwrite=True)
specflux(imagename="a2597_CO21_pbcorr_natural_10kms.fits", unit="km/s", logfile="40kms.log", overwrite=True)