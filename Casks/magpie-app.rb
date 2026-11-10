cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3598"
  sha256 arm:   "f482d96d9c13c0eabd1707702c77df151c8871e9f1e1e4617dd06ec5e3f3387e",
         intel: "65e4b3f651135d47f24c85fc420080a92d77791ceab0ee7fe329264abf40d42d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
