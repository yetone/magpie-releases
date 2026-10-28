class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1854/magpie-cli-darwin-arm64"
      sha256 "5f4a4fca32eb33b08f2b96f811c7eba57e655538def0fa29b0710c9e271e6eac"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1854/magpie-cli-darwin-amd64"
      sha256 "1f98854877e1275dbd6a1b04eed19d59e9c78e3ea523af5496ce373f688bd88b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1854/magpie-cli-linux-arm64"
      sha256 "b0aab829e46d35318ac246c45e33af9b55bdca82b0258c4ab5e76ed29ef100b0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1854/magpie-cli-linux-amd64"
      sha256 "1f7dbd7c0877eac432c80f147f93280249ffb4de979a0781232e65a64a47c11f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
