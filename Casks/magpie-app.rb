cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3383"
  sha256 arm:   "37e50563eb239c969b9c5e34e9d14fd8c905de54cfdbeb6e2eef1b80205f503f",
         intel: "1e12b8f912d4a229ac31b744a2758cf8ca3f18652203e64d2d8b5fde9d5efae7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
