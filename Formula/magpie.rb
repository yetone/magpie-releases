class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4845/magpie-cli-darwin-arm64"
      sha256 "7774b65949355edc2d9eb52cb0d0255b132c1aecfbe1e6205b3bec4ba7ab7500"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4845/magpie-cli-darwin-amd64"
      sha256 "04bd98731f755e638a28ecfabf15df112b1ffcb092139ccdad583f8e89f90ff4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4845/magpie-cli-linux-arm64"
      sha256 "d40fce74bd9487429d60c5990337e56ed35c20472b827d959df42467e0459133"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4845/magpie-cli-linux-amd64"
      sha256 "5a312fb3f9dbdf3bb019c8d79b5394edbe65eac09015c6e153456cca700110d7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
