class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2825/magpie-cli-darwin-arm64"
      sha256 "f8b5dd83a15c371f16ca180c9f03d6b3d4a18613a959f5c73b57da9d808719c9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2825/magpie-cli-darwin-amd64"
      sha256 "9627122f68cc23a30275d3146732b5e989d1e1fdd1216a8585accedef15c2ce2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2825/magpie-cli-linux-arm64"
      sha256 "aaf1dbfa08d3433a251f12a05e573a1affcf996f558fdbb3f9f3574cb39f40de"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2825/magpie-cli-linux-amd64"
      sha256 "800ed4c77727c2bd57fc325fc1b70eb88a06b216c77505abdeb74460118904c1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
