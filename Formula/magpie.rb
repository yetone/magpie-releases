class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5027/magpie-cli-darwin-arm64"
      sha256 "875c918f6eaf5c076abf8fc8f7a6821a64c152fdadb0f44635a066a3eaf93d05"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5027/magpie-cli-darwin-amd64"
      sha256 "9a74a41040c78f0d09e9c0b2b095264af6aea0fcbb8b5d9feac2a8ee0a08289a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5027/magpie-cli-linux-arm64"
      sha256 "53f2708648b0aff1483b84b6648bf858758915faf7ac761714fe20a71732519a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5027/magpie-cli-linux-amd64"
      sha256 "7ae1d8be968adeb0a27ac2b5a3450a93703f468098360875732f43ffe9ef1cba"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
