cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2826"
  sha256 arm:   "cad7b40854a67e12c20607d9da643f3e7df08b057f81440ebf458b9463c8740d",
         intel: "079289adf7cc57a0ff8ae7d846e1156e395ba3378e72e3ffd3747b0aa2db2d3e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
