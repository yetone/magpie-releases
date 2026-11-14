cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4206"
  sha256 arm:   "f9f9917b5c02e8d7e7df6cbd10145116abda623ce5fdd4941bf4f588474face0",
         intel: "2a0e2ef13461c8b6a5a58b21258f2920dbf55257f6b762dbe0d2d7cc6e4fd9cd"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
