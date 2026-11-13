class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4056/magpie-cli-darwin-arm64"
      sha256 "d687c3d65381fdb5ea622a5a6c5dce2cdf2349a825912cf7a5b807e04332c00e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4056/magpie-cli-darwin-amd64"
      sha256 "e2eb099803db401675d4f25d8f09954cdd7fb457bc9edd2bed6e307b140adda8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4056/magpie-cli-linux-arm64"
      sha256 "3ee3247782548cd7c098d5523ccc3134c5e9d74512ebb5d7e0ed009f583a46f2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4056/magpie-cli-linux-amd64"
      sha256 "9d16d78213c806c0d9407b62fa99c8a4ce77dd389acb8fcf333c3634aad09303"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
