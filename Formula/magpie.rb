class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2180/magpie-cli-darwin-arm64"
      sha256 "2a1303a7c6e2cec9b47b380898e6602162aef3a12ebc6c605e105dadb9c0fb69"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2180/magpie-cli-darwin-amd64"
      sha256 "f23fa3151d51075aacf02c1357842de60224e4f8f2aa85853dd4bf576e0b8bd0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2180/magpie-cli-linux-arm64"
      sha256 "491c6735bb3ffae2a96226f2422afb3080f30fd4d5214cce653bb350e1965711"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2180/magpie-cli-linux-amd64"
      sha256 "3ff5af7b26d27684428427524e9ec04ec55c56b8eee4f1187ad4fa3774ad8614"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
