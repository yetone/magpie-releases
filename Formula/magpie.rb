class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2213/magpie-cli-darwin-arm64"
      sha256 "e9505cec84190961563738a0d35fea0119d3158ea6ee2ad2cb142a9e4d76b0af"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2213/magpie-cli-darwin-amd64"
      sha256 "9aeac7b46104bc1ea75a30e9514768e3f504acdd47ba9bae314fb21d508604fb"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2213/magpie-cli-linux-arm64"
      sha256 "bd3af2bee307c55fe22951ac916441485f817172208684d620be7307452bb952"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2213/magpie-cli-linux-amd64"
      sha256 "0897de4e3266057cde0fdc87d8a5b3cd78a97c79202560c716f4a0bc1cdc5e22"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
