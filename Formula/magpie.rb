class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4440/magpie-cli-darwin-arm64"
      sha256 "0a40d359fe49923dce1833e7a3c18c23c4875fc2ef189b1868f937800e86d2f9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4440/magpie-cli-darwin-amd64"
      sha256 "48a022b896a0859fee3dc73e833177611ab2128ccc93bf062514dc57ee3db2fe"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4440/magpie-cli-linux-arm64"
      sha256 "0e075f904ab355b59fae7754f50b37ed33945855ba19602a78bdbe132390dafa"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4440/magpie-cli-linux-amd64"
      sha256 "6f1eb44c8fa7d344ee860ee378548d2970323d3761a5b8f754637a531b52e0cc"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
