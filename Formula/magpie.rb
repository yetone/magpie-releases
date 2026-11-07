class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3224/magpie-cli-darwin-arm64"
      sha256 "7d4025a9121fd8e24717b21d781170a84cffbd16957b379012630b4a8bdfa731"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3224/magpie-cli-darwin-amd64"
      sha256 "3d1039fcb2d1fb84a3562e5837a82689ac77c0450319a31f02d4e200cb602f37"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3224/magpie-cli-linux-arm64"
      sha256 "780e7a9c609e9c62ab87f01175cb311d8737430bf9c719e3be1490be9efcebc9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3224/magpie-cli-linux-amd64"
      sha256 "ced44d8ce01af85453d38783508f8643860c3892b54635aab78922b58d46dfe1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
