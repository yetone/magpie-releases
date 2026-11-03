class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2878/magpie-cli-darwin-arm64"
      sha256 "5d3cce23f42448cb618469798f586eb1fd50eb342da791437ad0486bc3b63a9d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2878/magpie-cli-darwin-amd64"
      sha256 "c7e80b85333fe3bbb2c3b0be175ed422a9787225ead2daa232bb9eca84e0de40"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2878/magpie-cli-linux-arm64"
      sha256 "90d1b21642da0a3cfbb243923df1fa09c6efa60d70e3cb27a80cdf0e13b492f3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2878/magpie-cli-linux-amd64"
      sha256 "522db6ea8454c6fa91a5e26565e48a42367e96e429d6758ddd9b74dd875d0c84"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
