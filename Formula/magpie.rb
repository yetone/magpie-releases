class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2224/magpie-cli-darwin-arm64"
      sha256 "3312d56c810aedae06d6f813ee009916e1c91a627ef8c1758dc58808a16546e0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2224/magpie-cli-darwin-amd64"
      sha256 "b4404f54326a7f068763c694344a0601bbcab14a427388ae35b1c932bd123616"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2224/magpie-cli-linux-arm64"
      sha256 "9d3a9eea9bce4f8f26d7df5357ef647cc0404569f9d7ce5c4f81fd2bac46076f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2224/magpie-cli-linux-amd64"
      sha256 "bc094b9e063358da8343013e496a95dcf77852816fab872bc3933e169ab44b6c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
