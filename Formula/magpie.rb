class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3176/magpie-cli-darwin-arm64"
      sha256 "e4ba51ff2411906dec531e6158855e9ac1928b51550479287811712a710d679d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3176/magpie-cli-darwin-amd64"
      sha256 "f7cdb8aff41f7cf569ff15cb0c1b98bba4645fb167c8cb98d4d0708acc3612d6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3176/magpie-cli-linux-arm64"
      sha256 "fc566b15620cdcb28b63bf783c38f90a3722a5369d810e8e3db6e44c65ea252a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3176/magpie-cli-linux-amd64"
      sha256 "f0c5a2e50d6b1ba27f5331e2378bfa6dc55f96c49cf210af1cdde53327f2a255"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
