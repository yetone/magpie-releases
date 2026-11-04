cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2889"
  sha256 arm:   "2a2efbba5b5f506c6723a840edb56c3d320c7e57348896041d40e70478d562dc",
         intel: "256cec2d6482ca850d894863b94c454a75a1ab97335ad6bbe2313e423afd3af6"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
