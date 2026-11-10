cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3634"
  sha256 arm:   "50475574116748e7ba4baf43561b4e6b9bd0c9fd33e2424baaeded2ba80ed8b5",
         intel: "bf758c9550bb64549baf995c343dc10ff2d6be39dffa4a713e09630ecb7cc13f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
