cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4078"
  sha256 arm:   "7a016093b2470df535fd24a06f57d76e84c0e5119929210c7254cb4119444da0",
         intel: "56978f697b56c1ab39ffe5100e71855f80b44fa9ce35adc081f2cd3b701aa716"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
