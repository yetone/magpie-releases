class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4906/magpie-cli-darwin-arm64"
      sha256 "c7ee7b7c3a88d26e945a682924eb1d7415ef56e7777ce553c6b8b105395b8a28"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4906/magpie-cli-darwin-amd64"
      sha256 "a5fdcae3485e73a9229414d9f833cc5bc7c202cbfaf78d34766ed61fefc2eee8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4906/magpie-cli-linux-arm64"
      sha256 "1a991d0f31f6adddd18d001b18022cc742fe690320e63525dc38a977935461b3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4906/magpie-cli-linux-amd64"
      sha256 "9bcccfba4181a3afa6b8d815f28ffc41d1b701fc82478601a0502ab3aca7909d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
