cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2521"
  sha256 arm:   "db16caf58cba450fb94a4b052c8d3900adff107ed13ee03ef1b5d6e229e74049",
         intel: "f6cee59888112b8b024643aacff1f837fed955945d812b2bcbb4bcd34ae283e4"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
