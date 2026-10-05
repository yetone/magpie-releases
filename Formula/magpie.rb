class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.933/magpie-cli-darwin-arm64"
      sha256 "97865700abf44f81b94ee249ce2b7358e70590260aab8dc106590eea05c205c2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.933/magpie-cli-darwin-amd64"
      sha256 "3a2f77625765933382174401624d10adeeacc46c2c9e60bfb62948f87d3bf335"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.933/magpie-cli-linux-arm64"
      sha256 "580fd7c2bef751f1e080d352fd99b680ab50b5bf81e9e447fbc96cef1fd8862c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.933/magpie-cli-linux-amd64"
      sha256 "811b82eb2053f64b16ed86183411435065417381739a09bd2fb659e364e0c483"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
