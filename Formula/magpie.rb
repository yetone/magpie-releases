class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1021/magpie-cli-darwin-arm64"
      sha256 "31a1a44a0c6312df486ec5020cd05340d207836fbb4cdf25cc60c4b24c47e8c0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1021/magpie-cli-darwin-amd64"
      sha256 "079c1bbe0e019ef7c7c41b8f6ac3246cfd34280a55116fb40d987ec91d47e8cc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1021/magpie-cli-linux-arm64"
      sha256 "dfefc618ba14bf81127bb08421ab54e3c4f5309dc8e31c301bbe23a0493e58ea"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1021/magpie-cli-linux-amd64"
      sha256 "35952c8be52614df31eeed2503851dd0541bcbd04d583690fe6b3cd2172a910a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
