class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4416/magpie-cli-darwin-arm64"
      sha256 "5ef99d35ce66855cdcbf2beb61204cf0b4e5aae6bf73dbcd82ce564c63732457"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4416/magpie-cli-darwin-amd64"
      sha256 "686797bf88541a5fede1925201a4afd5078d54d303d4975e4b4065ab87fd1786"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4416/magpie-cli-linux-arm64"
      sha256 "48f3f79ab45eb6c5f8e155b762f925aaab3a74baed3dd196a26ba1ace870ccd9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4416/magpie-cli-linux-amd64"
      sha256 "a31d02bec01f2f95bfc7e26e1e173c53702a828bcf0bd0c9ff978216eec9cf08"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
