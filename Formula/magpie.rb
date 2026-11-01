class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2567/magpie-cli-darwin-arm64"
      sha256 "26bbf9ef94b1cc3e59d86ddb8765cc0ae33c015d29c6200adf4cab27450eb07a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2567/magpie-cli-darwin-amd64"
      sha256 "d88bc19e57bfd605b6ce2fab8489659dfc32ba40aea4881cab065c140cb2b097"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2567/magpie-cli-linux-arm64"
      sha256 "ea6f59c5eba8cbffedef1f26857762aa4f72d12b46665aac31e27cb0512be60d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2567/magpie-cli-linux-amd64"
      sha256 "a5426b419da80c3d64bc14f3547c3136514ff6c6a31f2ac720803fbd241cc01b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
