cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2918"
  sha256 arm:   "f63347ba407ad6da657e4bfe417941a1ac547d3525def46292cb69848add2540",
         intel: "80b67f46f029b7895d4dc5da3a4e0b134876a0c15e8988faab79bb7e6fb5854c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
