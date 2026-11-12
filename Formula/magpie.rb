class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3837/magpie-cli-darwin-arm64"
      sha256 "1d2198bd61bb4494ff8257d63618ca154ae1dbb13225c3f2b540964e24b065b7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3837/magpie-cli-darwin-amd64"
      sha256 "8d1f230e34bd027890ae32fdd5427b71151c5845b92785164ceca7e41bb536be"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3837/magpie-cli-linux-arm64"
      sha256 "8d9d1956652529e8ed6d733146f5e7fb97bacb5acb56ed050fb37eff7f66e2d1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3837/magpie-cli-linux-amd64"
      sha256 "554adfe770c6e4d0fa10e5e71a63719813709c759e9a39bf506c865e98181a4a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
