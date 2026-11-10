class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3654/magpie-cli-darwin-arm64"
      sha256 "387f5c16bc111b0b3976dcd069e821a925aa3ccf13055fabf1cc973dc5a73773"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3654/magpie-cli-darwin-amd64"
      sha256 "6d7633944a7ad966f7c8cf9e0a115bc07b8f984711157d7731fb95d081711b6f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3654/magpie-cli-linux-arm64"
      sha256 "ee191d9a7ad7c0b2bd225eaa27f2bb5ac39c88c3211bc7e2d8f60ac8d49f3536"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3654/magpie-cli-linux-amd64"
      sha256 "88c469f02a1bdeecf59a61687fb55748a769624b98de7ad75f9c25f099d0a7fe"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
