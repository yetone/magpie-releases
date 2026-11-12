cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3815"
  sha256 arm:   "1c3b2f7ffdb54fd0b3234e1aa1c5f53d4c81450375de87aff003ee6570754255",
         intel: "6ca1ee92063c12530eefd8692e572944add874a65ed0fa251519802bf97cb863"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
