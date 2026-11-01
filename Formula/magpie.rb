class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2625/magpie-cli-darwin-arm64"
      sha256 "583bfd34a8db37b52de8cc7a5603abccda39172e041f593cc975e59d833b84c4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2625/magpie-cli-darwin-amd64"
      sha256 "9cda0d03ccae4cd3c80f98ec0d51d04f76533e37b87d0b92d1b58efa0a80bbe0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2625/magpie-cli-linux-arm64"
      sha256 "66440117ed938ec68685e396b4200e33c6a799f4c505c7bddc04168a63b23482"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2625/magpie-cli-linux-amd64"
      sha256 "6fb855fa0ab3823ea64079a8f9990a3084856dab08f84f6cc108cedfdb4d32da"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
