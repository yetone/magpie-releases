cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3528"
  sha256 arm:   "b6cea235604050efad80335de474f834d53b7c3af09a67676ea0722d3c46c701",
         intel: "e30f3eaa6c472ed998c17acafc7be3b2ada160a6bdac84ed37e2bff0e665b1d2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
