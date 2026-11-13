class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4088/magpie-cli-darwin-arm64"
      sha256 "5ce8480f7771b05c9048b0a61019776d0e34e1cb1c7e243de77fb4bece56f100"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4088/magpie-cli-darwin-amd64"
      sha256 "0d53f16032ce742cd98e28ab08c28dea150c088cc015fa7bac927c0baf674b83"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4088/magpie-cli-linux-arm64"
      sha256 "94c60c20041741fb22f8dd32b8fdca3816efdc26fe34f0721ad65f7e6e6b86b8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4088/magpie-cli-linux-amd64"
      sha256 "47962198343a521ccaa553dbf6f9f55466745721f715cb964be11cc61df27afc"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
