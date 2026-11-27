class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4940/magpie-cli-darwin-arm64"
      sha256 "864373e3bfbe2dcf5cd65288d7ce4c355e5c7867f3b86aa93f610e5606287178"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4940/magpie-cli-darwin-amd64"
      sha256 "bf9c1d5200de2ed28e287a79c121ddd28cfc0e3233fd476e99caf72058a96c83"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4940/magpie-cli-linux-arm64"
      sha256 "4c69cda69a51cd32fa70a4566d7463b531bf91c39736ca0c251f564e66aa8fd7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4940/magpie-cli-linux-amd64"
      sha256 "6e8665fcade8fdac325484450f5fbd9e77218b77ce3b7feec85f11ce7af01329"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
