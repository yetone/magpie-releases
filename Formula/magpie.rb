class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3309/magpie-cli-darwin-arm64"
      sha256 "994f1e35ba35a7cbf22793a4db15b00f5f55322b132b43bf71844468edbcad70"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3309/magpie-cli-darwin-amd64"
      sha256 "8a9faba9cb35a4d288325e31b3b665508690153790a5e757970b05cc58a376db"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3309/magpie-cli-linux-arm64"
      sha256 "0e04db95f1e270fdd0d58bb45efe6c2e952dc20e43f83062eb5317f4519cd8a0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3309/magpie-cli-linux-amd64"
      sha256 "7ba4c33970690ab8cc27c04172cba6b54fbbeb6a1e6fec03e9866681eb149bc4"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
