class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4158/magpie-cli-darwin-arm64"
      sha256 "94e951d08a269180d002053d15c869333e97d0c430055048fa84fd05329d3801"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4158/magpie-cli-darwin-amd64"
      sha256 "d306ac9afce048a89210cc6609d319996ef215013fd0831e362933cac7566e54"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4158/magpie-cli-linux-arm64"
      sha256 "0214f4204cc4138a04c42983971bc2b2743ad5ae236729cf4100c650c28baeac"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4158/magpie-cli-linux-amd64"
      sha256 "776c51f3e48cb3688b996523dacf63307e694321eaa20fb35b4cb18808acc8c4"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
