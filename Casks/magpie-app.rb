cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4193"
  sha256 arm:   "3890fe1c768b4594790615d8fb269f65afaadde563561b4c8e57dc95a9857ac3",
         intel: "ee8dcc10e6f0b90d0647ee75515c4ba52791000b476997ad0a173b56b3fb3a03"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
