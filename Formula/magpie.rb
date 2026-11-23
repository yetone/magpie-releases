class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4691/magpie-cli-darwin-arm64"
      sha256 "324437cdf24544e30bc5b66bd36b0b43249f19fd41aac4afcd74a67751c0e6e1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4691/magpie-cli-darwin-amd64"
      sha256 "16774c5f8a99fa8fa61deda1a086bdd4d72b354f8a065900d39cd6628c261eb6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4691/magpie-cli-linux-arm64"
      sha256 "e14bc03b723523fc5cd13941ee9bc099d4d48647259c615516d82ddb5a8661d7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4691/magpie-cli-linux-amd64"
      sha256 "e8c71fdc8591f26f992b0a44e042b7de2908f10c127beb6599121bfe71e7ed8b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
