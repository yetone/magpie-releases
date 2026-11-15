cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4272"
  sha256 arm:   "0fe8d54ac9550c2a78d038fa1ab520019a5b9a4192fbae6f3e49553ab75c1d44",
         intel: "b262cab7b3b2bd6518f52c74c684673c2fbd97a2a08d26015fbab690f7600fb2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
