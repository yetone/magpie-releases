class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3361/magpie-cli-darwin-arm64"
      sha256 "ac36caed88b054e21d4e0ed8cf7f3671dd0a566e5fcab44e7d5a25c8867b3b7a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3361/magpie-cli-darwin-amd64"
      sha256 "1fd7ef805e14d9663e1675039fcdfaf655a6484f67231787f08d5d9419ca6a35"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3361/magpie-cli-linux-arm64"
      sha256 "cff2884147fd78840d6e11c499fae4fb8074cae1df249f4c99b355cc5f5becbf"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3361/magpie-cli-linux-amd64"
      sha256 "4879ebff3a875052fb50512c6cfeb36d8779d123c93454227526c86dbec83b01"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
