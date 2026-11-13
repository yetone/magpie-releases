cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4060"
  sha256 arm:   "aa9089a490bf84bc42f2c2a90b7040a94fcdb736ef7ca8e47b8d7eef869d6d7c",
         intel: "25334682493133ca2dc4b9fc4d121aac6abfa069de7183128d98b1e33b8a876d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
