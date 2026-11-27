cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4934"
  sha256 arm:   "b9a3dfdd47dfccf9e1e0bebc9fa7477106a64b1017ca067381d3f3e8b54c579e",
         intel: "34c22e8c921561f30bf260950a4f774104ce1842895cb508afb7c8d51bd681a9"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
