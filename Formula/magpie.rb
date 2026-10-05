class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.982/magpie-cli-darwin-arm64"
      sha256 "dc48021e270d0c5a98d11a6d411b601bca70149c11c2591f45aa30df0c318640"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.982/magpie-cli-darwin-amd64"
      sha256 "21a65f55d3d7d30817f504c69b722678b1d1b3c0dfd82adec0ed255e25ff2ee0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.982/magpie-cli-linux-arm64"
      sha256 "3602742d3e7c1cd44a11b8218a7f8cbadeafa7f965df5caa4e79e41e0ca0ec0d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.982/magpie-cli-linux-amd64"
      sha256 "57121f166f1a61236413e120e54bc150473eb9998195408fa516121fa779a914"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
