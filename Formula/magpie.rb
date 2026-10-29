class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2074/magpie-cli-darwin-arm64"
      sha256 "16108c181db8cc7ce5202e45d586d17f4f339076c0b19bce2b3d373f4c6f7a38"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2074/magpie-cli-darwin-amd64"
      sha256 "cff012980fb0165048abbc18932af3dcfa5f638bd985b953bb07812f74131764"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2074/magpie-cli-linux-arm64"
      sha256 "64170025c13de108d59e709c82c0e775f5bb2a0ba310eed643a57418384fbd73"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2074/magpie-cli-linux-amd64"
      sha256 "c6f9ce2267be8ef99220d0b878ca80c8de1bca3479b7b251a30224802cbca58a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
