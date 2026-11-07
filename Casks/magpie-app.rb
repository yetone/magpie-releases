cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3216"
  sha256 arm:   "53769c5bd39f6e3bfdca897d5d4cf3c556088e05b958ad760ede64e7ad0b6eca",
         intel: "460a657a949cdaa2b7b0827c3117418208ff93a2bc18910ad83c32f930c8b6ef"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
