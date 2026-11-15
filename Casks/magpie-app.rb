cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4235"
  sha256 arm:   "b45c1bc3f629ffdc8105ca20ccb872f74b0bcd9a56bfe3f5d87dafd41cac6d5b",
         intel: "8818a3e05a1127726ee7a4ee4118918b6223bda62b171fd57b6a7b38e35fa4d5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
