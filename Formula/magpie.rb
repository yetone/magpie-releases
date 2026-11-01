class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2522/magpie-cli-darwin-arm64"
      sha256 "7e72f9f05ef60d4770a08781301c6c93750f7850ec3bf0ec50db1d935980c2b6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2522/magpie-cli-darwin-amd64"
      sha256 "8667de70f72d6e05586788641ad5c95552c0d549d063170b9596bfde91e18f0c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2522/magpie-cli-linux-arm64"
      sha256 "6161fb1803f4e0537dcd4e46d6677214dee2dfa039520a5dde381a4def38fed1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2522/magpie-cli-linux-amd64"
      sha256 "017deeb54723ed73a24b68ce6f8a8110e8fdb0548b9452bf3f4384c3d0371a31"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
